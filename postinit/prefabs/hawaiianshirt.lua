local env = env
GLOBAL.setfenv(1, GLOBAL)


env.AddPrefabPostInit("hawaiianshirt", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    inst:AddComponent("container")
    inst.components.container:WidgetSetup("hawaiianshirt")
    inst.components.container.skipclosesnd = true
    inst.components.container.skipopensnd = true


    if inst.components.equippable ~=nil then
        local oldOnEquip = inst.components.equippable.onequipfn
        inst.components.equippable:SetOnEquip(function(inst,owner)
            oldOnEquip(inst,owner)
            inst.components.container:Open(owner)

            if owner.components.sanity~=nil then
                if inst.task~=nil then
                    inst.task:Cancel()
                    inst.task = nil
                end
                inst.task = inst:DoPeriodicTask(15,function(inst)
                    inst.components.inventoryitem.owner.components.sanity:DoDelta(1)
                end)
            end
        end)

        local oldOnUnequip = inst.components.equippable.onunequipfn
        inst.components.equippable:SetOnUnequip(function(inst,owner)
            oldOnUnequip(inst,owner)
            inst.components.container:Close(owner)

            if inst.task~=nil then
                inst.task:Cancel()
                inst.task = nil
            end
        end)
    end

end)




