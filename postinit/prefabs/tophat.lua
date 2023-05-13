local env = env
GLOBAL.setfenv(1, GLOBAL)




env.AddPrefabPostInit("tophat",function(inst)
    
    inst:AddTag("backpack")

    --在服务器端执行
    if not TheWorld.ismastersim then
        return 
    end

    inst:AddComponent("container")
    inst.components.container:WidgetSetup("tophat")
    inst.components.container.skipclosesnd = true
    inst.components.container.skipopensnd = true

    if inst.components.equippable ~=nil then
        inst.components.equippable.dapperness = 0

        local oldOnEquip = inst.components.equippable.onequipfn
        inst.components.equippable:SetOnEquip(function(inst,owner)
            oldOnEquip(inst,owner)
            inst.components.container:Open(owner)

            if owner.components.health ~= nil then
                if inst.task~=nil then
                    inst.task:Cancel()
                    inst.task = nil
                end
                inst.task = inst:DoPeriodicTask(60,function(inst)
                    inst.components.inventoryitem.owner.components.health:DoDelta(1)
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

        local oldOnEquipToModel = inst.components.equippable.onequiptomodelfn
        inst.components.equippable:SetOnEquipToModel(function(inst,owner)
            oldOnEquipToModel(inst,owner)

            inst.components.container:Close(owner)
            if inst.task~=nil then
                inst.task:Cancel()
                inst.task = nil
            end
        end)
    end

    if inst.components.fueled ~=nil then
        local oldDepleted = inst.components.fueled.depleted
        inst.components.fueled:SetDepletedFn(function(inst)
            inst.components.container:Close(owner)

            if inst.task~=nil then
                inst.task:Cancel()
                inst.task = nil
            end
            oldDepleted(inst)
        end)
    end

end)




