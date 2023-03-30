local env = env
GLOBAL.setfenv(1, GLOBAL)

local function UpdateDamage(inst)
    if inst.components.perishable and inst.components.weapon then
       local dmg=TUNING.DPP.DPP_HAMBAT_DAMAGE* inst.components.perishable:GetPercent()
       dmg= Remap(dmg,0,TUNING.DPP.DPP_HAMBAT_DAMAGE,TUNING.SPEAR_DAMAGE,TUNING.DPP.DPP_HAMBAT_DAMAGE)
       print(dmg)
       inst.components.weapon:SetDamage(dmg)
    end
end

local function OnLoad(inst)
    UpdateDamage(inst)
end


env.AddPrefabPostInit("hambat",function(inst)
    if not TheWorld.ismastersim  then return end

    inst.OnLoad = OnLoad
    if inst.components.weapon ~=nil then
        local OldOnAttack = inst.components.weapon.onattack
        inst.components.weapon.onattack=function(inst)
            -- if OldOnAttack~=nil then
            --     OldOnAttack(inst)
            -- end
            UpdateDamage(inst)
        end
    end

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

