local env = env
GLOBAL.setfenv(1, GLOBAL)



env.AddPrefabPostInit("deciduoustree", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.workable~=nil and inst.components.lootdropper~=nil then
        local oldOnFinish = inst.components.workable.onfinish
        inst.components.workable:SetOnFinishCallback(function(inst,chopper)
            if inst.monster then
                inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1.0)
                inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.4)
                inst.components.lootdropper:AddChanceLoot("charcoal", 1.0)
                inst.components.lootdropper:AddChanceLoot("charcoal", 0.8)
                inst.components.lootdropper:AddChanceLoot("charcoal", 0.5)
                inst.components.lootdropper:AddChanceLoot('thulecite_pieces',1.0)
                inst.components.lootdropper:AddChanceLoot('thulecite_pieces',0.6)
                inst.components.lootdropper:AddChanceLoot('thulecite_pieces',0.3)

                inst.components.lootdropper:AddRandomLoot("spear",1)
                inst.components.lootdropper:AddRandomLoot("smallmeat",1)
                inst.components.lootdropper:AddRandomLoot("meat",1)
                inst.components.lootdropper:AddRandomLoot("monstermeat",1)
                inst.components.lootdropper.numrandomloot = math.random(1,2)
            end
            oldOnFinish(inst,chopper)
        end)
    end
end)







