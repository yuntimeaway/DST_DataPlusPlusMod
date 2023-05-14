local env = env
GLOBAL.setfenv(1,GLOBAL)


env.AddPrefabPostInit("raincoat",function(inst)
    if not TheWorld.ismastersim then
        return
    end
    
    inst:AddComponent("container")
    inst.components.container:WidgetSetup("raincoat")
    inst.components.container.skipclosesnd = true
    inst.components.container.skipopensnd = true

    if inst.components.equippable ~=nil then
        local oldOnEquip = inst.components.equippable.onequipfn
        inst.components.equippable:SetOnEquip(function(inst,owner)
            oldOnEquip(inst,owner)
            inst.components.container:Open(owner)
        end)

        local oldOnUnequip = inst.components.equippable.onunequipfn
        inst.components.equippable:SetOnUnequip(function(inst,owner)
            oldOnUnequip(inst,owner)
            inst.components.container:Close(owner)
        end)

        local oldOnEquipToModel = inst.components.equippable.onequiptomodelfn
        inst.components.equippable:SetOnEquipToModel(function(inst,owner)
            oldOnEquipToModel(inst,owner)
            inst.components.container:Close(owner)
        end)
    end
end)




