local env = env
GLOBAL.setfenv(1, GLOBAL)


env.AddPrefabPostInit("featherhat",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.equippable~=nil then
        local oldEquip = inst.components.equippable.onequipfn
        inst.components.equippable:SetOnEquip(function(inst,owner)
            oldEquip(inst,owner)
            if owner.components.sanity~=nil then
                if inst.task~=nil then
                    inst.task:Cancel()
                    inst.task = nil
                end
                inst.task = inst:DoPeriodicTask(7.5,function(inst)
                    inst.components.inventoryitem.owner.components.sanity:DoDelta(1)
                end)
            end
        end)

        local oldUnequip = inst.components.equippable.onunequipfn
        inst.components.equippable:SetOnUnequip(function(inst,owner)
            oldUnequip(inst,owner)
            if inst.task~=nil then
                inst.task:Cancel()
                inst.task = nil
            end
        end)
    end

end)





