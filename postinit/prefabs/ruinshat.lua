local env = env
GLOBAL.setfenv(1, GLOBAL)


local function ruinshat_fxanim(inst)
    inst._fx.AnimState:PlayAnimation("hit")
    inst._fx.AnimState:PushAnimation("idle_loop")
end

local function myruinshat_oncooldown(inst)
    inst._task = nil
end

local function myruinshat_unproc(inst)
    if inst:HasTag("forcefield") then
        inst:RemoveTag("forcefield")
        if inst._fx ~= nil then
            inst._fx:kill_fx()
            inst._fx = nil
        end
        inst:RemoveEventCallback("armordamaged", ruinshat_fxanim)

        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMOR_RUINSHAT_ABSORPTION)
        inst.components.armor.ontakedamage = nil

        if inst._task ~= nil then
            inst._task:Cancel()
        end
        inst._task = inst:DoTaskInTime(TUNING.ARMOR_RUINSHAT_COOLDOWN, myruinshat_oncooldown)
    end
end

local function myruinshat_proc(inst, owner)
    inst:AddTag("forcefield")
    if inst._fx ~= nil then
        inst._fx:kill_fx()
    end
    inst._fx = SpawnPrefab("forcefieldfx")
    inst._fx.entity:SetParent(owner.entity)
    inst._fx.Transform:SetPosition(0, 0.2, 0)
    inst:ListenForEvent("armordamaged", ruinshat_fxanim)

    inst.components.armor:SetAbsorption(TUNING.FULL_ABSORPTION)
    inst.components.armor.ontakedamage = function(inst, damage_amount)
        if owner ~= nil and owner.components.sanity ~= nil then
            owner.components.sanity:DoDelta(-damage_amount * TUNING.ARMOR_RUINSHAT_DMG_AS_SANITY, false)
        end
    end

    if inst._task ~= nil then
        inst._task:Cancel()
    end
    inst._task = inst:DoTaskInTime(TUNING.ARMOR_RUINSHAT_DURATION, myruinshat_unproc)
end

local function mytryproc(inst, owner, data)
    if inst._task == nil and
        not data.redirected and
        math.random() < TUNING.ARMOR_RUINSHAT_PROC_CHANCE then
        myruinshat_proc(inst, owner)
    end
end


env.AddPrefabPostInit("ruinshat", function(inst)
    if not TheWorld.ismastersim then
        return
    end
    if inst.components.armor ~= nil then
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMOR_RUINSHAT_ABSORPTION)
    end
    inst.procfn = function(owner, data) mytryproc(inst, owner, data) end
    if inst~=nil then
        inst.onattach = function(owner)
            if inst._owner ~= nil then
                inst:RemoveEventCallback("attacked", inst.procfn, inst._owner)
                inst:RemoveEventCallback("onremove", inst.ondetach, inst._owner)
            end
            inst:ListenForEvent("attacked", inst.procfn, owner)
            inst:ListenForEvent("onremove", inst.ondetach, owner)
            inst._owner = owner
            inst._fx = nil
        end
        inst.ondetach = function()
            myruinshat_unproc(inst)
            if inst._owner ~= nil then
                inst:RemoveEventCallback("attacked", inst.procfn, inst._owner)
                inst:RemoveEventCallback("onremove", inst.ondetach, inst._owner)
                inst._owner = nil
                inst._fx = nil
            end
        end
    end
end)


