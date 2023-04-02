local env = env
GLOBAL.setfenv(1, GLOBAL)


--更新火腿棒的攻击力,因为火腿棒会随着新鲜度而下降攻击力,所以需要在装备/卸下/攻击的时候更新攻击力
local function UpdateDamage(inst)
    --判断是否有可腐烂组件和武器组件,有则修改武器组件内的伤害值
    if inst.components.perishable and inst.components.weapon then
        --根据新鲜度百分比计算攻击力
       local dmg=TUNING.DPP.DPP_HAMBAT_DAMAGE* inst.components.perishable:GetPercent()
       --将攻击力限制在TUNING.SPEAR_DAMAGE和TUNING.DPP.DPP_HAMBAT_DAMAGE之间
       dmg= Remap(dmg,0,TUNING.DPP.DPP_HAMBAT_DAMAGE,TUNING.SPEAR_DAMAGE,TUNING.DPP.DPP_HAMBAT_DAMAGE)
       --print(dmg)
       --修改武器组件内的伤害值
       inst.components.weapon:SetDamage(dmg)
    end
end

local function OnLoad(inst)
    UpdateDamage(inst)
end

--对火腿棒生成的初始化修改
env.AddPrefabPostInit("hambat",function(inst)
    --在服务器端执行
    if not TheWorld.ismastersim  then
        return
    end
    --重新设置OnLoad函数,为本地的OnLoad函数
    inst.OnLoad = OnLoad
    --判断是否有武器组件,有则将武器组件内的原本onattack设置为本地的UpdateDamage函数,因为火腿棒会随着新鲜度而下降攻击力
    if inst.components.weapon ~=nil then
        local OldOnAttack = inst.components.weapon.onattack
        inst.components.weapon.onattack=function(inst)
            -- if OldOnAttack~=nil then
            --     OldOnAttack(inst)
            -- end
            UpdateDamage(inst)
        end
    end
    --判断是否有可装配组件,有则将可装配组件内的原本onequipfn和onunequipfn存下来,然后对其设置为新的函数,函数内会调用原本的函数和UpdateDamage函数
    --主要是在装备和卸下的时候更新攻击力
    if inst.components.equippable~=nil then
        local OldOnEquip = inst.components.equippable.onequipfn
        inst.components.equippable.onequipfn=function(inst,owner)
            if OldOnEquip~=nil then
                OldOnEquip(inst,owner)
            end
            UpdateDamage(inst)
        end

        local OldOnUnequip = inst.components.equippable.onunequipfn
        inst.components.equippable.onunequipfn=function(inst,owner)
            if OldOnUnequip~=nil then
                OldOnUnequip(inst,owner)
            end
            UpdateDamage(inst)
        end
    end
end)

