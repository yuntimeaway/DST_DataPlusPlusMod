local env = env
GLOBAL.setfenv(1, GLOBAL)


-----------------------------------

local function applyskillbrightness(inst, value)
    if inst.fires then
        for i,fx in ipairs(inst.fires) do
            fx:SetLightRange(value)
        end
    end     
end

local function removeskillbrightness(inst, value)
    if inst.fires then
        for i,fx in ipairs(inst.fires) do
            fx:SetLightRange(value)
        end
    end 
end

local function applyskillfueleffect(inst,value)
    inst.components.fueled.rate_modifiers:SetModifier(inst, value,"wilsonskill")
end
local function removeskillfueleffect(inst)
    inst.components.fueled.rate_modifiers:RemoveModifier(inst, "wilsonskill")
end

local function applytorchskilleffects(inst, data)
    --SKILLTREE CODE
    if data.fuelmod then
        applyskillfueleffect(inst,data.fuelmod)
    end
    if data.brightnessmod then
        applyskillbrightness(inst,data.brightnessmod)
    end
end

local function getskillfueleffectmodifier(inst, owner)
    if not owner.components.skilltreeupdater then
        return nil
    end
    if owner.components.skilltreeupdater:IsActivated("wilson_torch_3") then
        return TUNING.SKILLS.WILSON_TORCH_3
    elseif owner.components.skilltreeupdater:IsActivated("wilson_torch_2") then
        return TUNING.SKILLS.WILSON_TORCH_2
    elseif owner.components.skilltreeupdater:IsActivated("wilson_torch_1") then
        return TUNING.SKILLS.WILSON_TORCH_1
    end
end

local function getskillbrightnesseffectmodifier(inst, owner)
    if not owner.components.skilltreeupdater then
        return nil
    end    
    if owner.components.skilltreeupdater:IsActivated("wilson_torch_6") then
        return TUNING.SKILLS.WILSON_TORCH_6
    elseif   owner.components.skilltreeupdater:IsActivated("wilson_torch_5") then
        return TUNING.SKILLS.WILSON_TORCH_5
    elseif   owner.components.skilltreeupdater:IsActivated("wilson_torch_4") then
        return TUNING.SKILLS.WILSON_TORCH_4
    end
end

-----------------------------------

local function DoIgniteSound(inst, owner)
	inst._ignitesoundtask = nil
    local se = (owner ~= nil and owner:IsValid() and owner or inst).SoundEmitter
    if se ~= nil then
        se:PlaySound("dontstarve/wilson/torch_swing")
    end
end

local function DoExtinguishSound(inst, owner)
	inst._extinguishsoundtask = nil
    local se = (owner ~= nil and owner:IsValid() and owner or inst).SoundEmitter
    if se ~= nil then
       se:PlaySound("dontstarve/common/fireOut")
    end
end

local function PlayIgniteSound(inst, owner, instant, force)
	if inst._extinguishsoundtask ~= nil then
		inst._extinguishsoundtask:Cancel()
		inst._extinguishsoundtask = nil
		if not force then
			return
		end
	end
	if instant then
		if inst._ignitesoundtask ~= nil then
			inst._ignitesoundtask:Cancel()
		end
		DoIgniteSound(inst, owner)
	elseif inst._ignitesoundtask == nil then
		inst._ignitesoundtask = inst:DoTaskInTime(0, DoIgniteSound, owner)
	end
end

local function PlayExtinguishSound(inst, owner, instant, force)
	if inst._ignitesoundtask ~= nil then
		inst._ignitesoundtask:Cancel()
		inst._ignitesoundtask = nil
		if not force then
			return
		end
	end
	if instant then
		if inst._extinguishsoundtask ~= nil then
			inst._extinguishsoundtask:Cancel()
		end
		DoExtinguishSound(inst, owner)
	elseif inst._extinguishsoundtask == nil then
		inst._extinguishsoundtask = inst:DoTaskInTime(0, DoExtinguishSound, owner)
	end
end


local function onfuelchange(newsection, oldsection, inst)
    if newsection <= 0 then
        --when we burn out
        if inst.components.burnable ~= nil then
            inst.components.burnable:Extinguish()
        end
        if inst.components.lighter then
            inst:RemoveComponent("lighter")
        end
		local owner = inst.components.inventoryitem ~= nil and inst.components.inventoryitem.owner or nil
		if owner ~= nil then
			local equippable = inst.components.equippable
			if equippable ~= nil and equippable:IsEquipped() then
                local data =
                {
                    prefab = inst.prefab,
                    equipslot = equippable.equipslot,
                    announce = "ANNOUNCE_TORCH_OUT",
                }
				PlayExtinguishSound(inst, owner, true, false)
				--inst:Remove() --need to remove before "itemranout" for auto-reequip to work
                owner:PushEvent("itemranout", data)
			else
				--inst:Remove()
            end
		elseif inst.fires ~= nil then
			for i, fx in ipairs(inst.fires) do
				fx:Remove()
			end
			inst.fires = nil
			PlayExtinguishSound(inst, nil, true, false)
			inst.persists = false
			inst:AddTag("NOCLICK")
			ErodeAway(inst)
		else
			--Shouldn't reach here
            --哥们改过代码后就是会到这里
            --print("Torch remove")
			--inst:Remove()
        end
    end
end

local function turnon(inst)
    if inst.components.fueled ~= nil and not inst.components.fueled:IsEmpty() then
        inst.components.burnable:Ignite()
        local owner = inst.components.inventoryitem.owner
    
        PlayIgniteSound(inst, owner, true, false)
    
        if inst.fires == nil then
            inst.fires = {}
    
            for i, fx_prefab in ipairs(inst:GetSkinName() == nil and { "torchfire" } or SKIN_FX_PREFAB[inst:GetSkinName()] or {}) do
                local fx = SpawnPrefab(fx_prefab)
                fx.entity:SetParent(owner.entity)
                fx.entity:AddFollower()
                fx.Follower:FollowSymbol(owner.GUID, "swap_object", fx.fx_offset_x or 0, fx.fx_offset, 0)
                fx:AttachLightTo(owner)
                if fx.AssignSkinData ~= nil then
                    fx:AssignSkinData(inst)
                end
    
                table.insert(inst.fires, fx)
            end
        end
        applytorchskilleffects(inst, {fuelmod = getskillfueleffectmodifier(inst, owner), brightnessmod = getskillbrightnesseffectmodifier(inst, owner) } )
    end
end


local function onequip(inst, owner)
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("equipskinneditem", inst:GetSkinName())
        owner.AnimState:OverrideItemSkinSymbol("swap_object", skin_build, "swap_torch", inst.GUID, "swap_torch")
    else
        owner.AnimState:OverrideSymbol("swap_object", "swap_torch", "swap_torch")
    end
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
    turnon(inst)
end

local function onattack(weapon, attacker, target)
    --target may be killed or removed in combat damage phase
    if target ~= nil and target:IsValid() and 
     target.components.burnable ~= nil and
     attacker.components.fueled ~=nil and not attacker.components.fueled:IsEmpty() and
      math.random() < TUNING.TORCH_ATTACK_IGNITE_PERCENT * target.components.burnable.flammability then
        target.components.burnable:Ignite(nil, attacker)
    end
end

local function nofuel(inst)
    --print("torch nofuel")
    local owner = inst.components.inventoryitem.owner
    if inst.fires ~= nil then
        for i, fx in ipairs(inst.fires) do
            fx:Remove()
        end
        inst.fires = nil
        PlayExtinguishSound(inst, owner, false, false)
    end

    inst.components.burnable:Extinguish()
    if inst.components.lighter ~= nil then
        inst:RemoveComponent("lighter")
    end

end

local function ontakefuel(inst)
    if inst.components.lighter == nil then
        inst:AddComponent("lighter")
    end
    if inst.components.equippable:IsEquipped() then
        turnon(inst)
    end
end


env.AddPrefabPostInit("torch", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.fueled~=nil then
        --inst.components.fueled.fueltype = FUELTYPE.CAVE
        --inst.components.fueled:InitializeFuelLevel(TUNING.TORCH_FUEL)
        inst.components.fueled:SetSectionCallback(onfuelchange)
        inst.components.fueled:SetDepletedFn(nofuel)
        inst.components.fueled:SetTakeFuelFn(ontakefuel)
        --inst.components.fueled:SetFirstPeriod(TUNING.TURNON_FUELED_CONSUMPTION, TUNING.TURNON_FULL_FUELED_CONSUMPTION)
        inst.components.fueled.accepting = true
    end
    if inst.components.equippable ~= nil then
        inst.components.equippable:SetOnEquip(onequip)
    end

    if inst.components.weapon ~= nil then
        inst.components.weapon:SetOnAttack(onattack)
    end
end)

