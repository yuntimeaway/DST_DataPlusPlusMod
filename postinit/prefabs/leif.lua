local env = env
GLOBAL.setfenv(1, GLOBAL)


env.AddPrefabPostInit("leif", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.lootdropper ~= nil then
        inst.components.lootdropper:SetLoot({"livinglog", "livinglog", "livinglog", "livinglog", "monstermeat"})
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1.0)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.6)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.3)
        inst.components.lootdropper:AddChanceLoot('thulecite_pieces',1.0)
        inst.components.lootdropper:AddChanceLoot('thulecite_pieces',0.6)
        inst.components.lootdropper:AddChanceLoot('thulecite_pieces',0.3)
        inst.components.lootdropper:AddChanceLoot('charcoal',1.0)
        inst.components.lootdropper:AddChanceLoot('charcoal',1.0)
        inst.components.lootdropper:AddChanceLoot('charcoal',0.5)
        inst.components.lootdropper:AddChanceLoot('charcoal',0.5)

    
        inst.components.lootdropper:AddRandomLoot("redgem",1)
        inst.components.lootdropper:AddRandomLoot("purplegem",1)
        inst.components.lootdropper:AddRandomLoot("bluegem",1)
        inst.components.lootdropper:AddRandomLoot("orangegem",0.5)
        inst.components.lootdropper:AddRandomLoot("yellowgem",0.5)
        inst.components.lootdropper:AddRandomLoot("purpleamulet",0.5)
        inst.components.lootdropper:AddRandomLoot("blueamulet",0.5)
        inst.components.lootdropper:AddRandomLoot("",10)
        inst.components.lootdropper.numrandomloot = 2
    end
end)


env.AddPrefabPostInit("leif_sparse", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.lootdropper ~= nil then
        inst.components.lootdropper:SetLoot({"livinglog", "livinglog", "livinglog", "livinglog", "monstermeat"})
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1.0)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.6)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.3)
        inst.components.lootdropper:AddChanceLoot('thulecite_pieces',1.0)
        inst.components.lootdropper:AddChanceLoot('thulecite_pieces',0.6)
        inst.components.lootdropper:AddChanceLoot('thulecite_pieces',0.3)
        inst.components.lootdropper:AddChanceLoot('charcoal',1.0)
        inst.components.lootdropper:AddChanceLoot('charcoal',1.0)
        inst.components.lootdropper:AddChanceLoot('charcoal',0.5)
        inst.components.lootdropper:AddChanceLoot('charcoal',0.5)

    
        inst.components.lootdropper:AddRandomLoot("redgem",1)
        inst.components.lootdropper:AddRandomLoot("purplegem",1)
        inst.components.lootdropper:AddRandomLoot("bluegem",1)
        inst.components.lootdropper:AddRandomLoot("orangegem",0.5)
        inst.components.lootdropper:AddRandomLoot("yellowgem",0.5)
        inst.components.lootdropper:AddRandomLoot("purpleamulet",0.5)
        inst.components.lootdropper:AddRandomLoot("blueamulet",0.5)
        inst.components.lootdropper:AddRandomLoot("",10)
        inst.components.lootdropper.numrandomloot = 2
    end
end)



