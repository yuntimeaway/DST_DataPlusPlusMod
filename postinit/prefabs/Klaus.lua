local env = env
GLOBAL.setfenv(1, GLOBAL)




env.AddPrefabPostInit("klaus", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.lootdropper ~= nil then
        inst.components.lootdropper:AddChanceLoot("meat", 1)
        inst.components.lootdropper:AddChanceLoot("meat", 1)
        inst.components.lootdropper:AddChanceLoot("meat", 1)
        inst.components.lootdropper:AddChanceLoot("meat", 1)
        inst.components.lootdropper:AddChanceLoot("meat", 1)
        inst.components.lootdropper:AddChanceLoot("meat", 1)
        inst.components.lootdropper:AddChanceLoot("thulecite_pieces", 1)
        inst.components.lootdropper:AddChanceLoot("thulecite_pieces", 0.6)
        inst.components.lootdropper:AddChanceLoot("thulecite_pieces", 0.4)
        inst.components.lootdropper:AddChanceLoot("livinglog", 1)
        inst.components.lootdropper:AddChanceLoot("livinglog", 0.5)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.7)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.4)
        inst.components.lootdropper:AddChanceLoot("krampus_sack", 0.05)
        inst.components.lootdropper:AddChanceLoot("spidereggsack", 0.5)
        inst.components.lootdropper:AddChanceLoot("houndstooth", 1)
        inst.components.lootdropper:AddChanceLoot("houndstooth", 1)
        inst.components.lootdropper:AddChanceLoot("houndstooth", 1)
        inst.components.lootdropper:AddChanceLoot("houndstooth", 1)
        inst.components.lootdropper:AddChanceLoot("houndstooth", 0.8)
        inst.components.lootdropper:AddChanceLoot("houndstooth", 0.6)
        inst.components.lootdropper:AddChanceLoot("houndstooth", 0.4)
        inst.components.lootdropper:AddChanceLoot("houndstooth", 0.2)
        inst.components.lootdropper:AddChanceLoot("pigskin", 1)
        inst.components.lootdropper:AddChanceLoot("pigskin", 1)
        inst.components.lootdropper:AddChanceLoot("pigskin", 0.6)
        inst.components.lootdropper:AddChanceLoot("pigskin", 0.4)
        inst.components.lootdropper:AddChanceLoot("manrabbit_tail", 1)
        inst.components.lootdropper:AddChanceLoot("manrabbit_tail", 1)
        inst.components.lootdropper:AddChanceLoot("manrabbit_tail", 1)
        inst.components.lootdropper:AddChanceLoot("manrabbit_tail", 1)
        inst.components.lootdropper:AddChanceLoot("manrabbit_tail", 0.6)
        inst.components.lootdropper:AddChanceLoot("manrabbit_tail", 0.4)
        inst.components.lootdropper:AddChanceLoot("honeycomb", 1)
        inst.components.lootdropper:AddChanceLoot("honeycomb", 0.5)
        inst.components.lootdropper:AddChanceLoot("marble", 1)
        inst.components.lootdropper:AddChanceLoot("marble", 1)
        inst.components.lootdropper:AddChanceLoot("marble", 1)
        inst.components.lootdropper:AddChanceLoot("marble", 1)
        inst.components.lootdropper:AddChanceLoot("marble", 0.7)
        inst.components.lootdropper:AddChanceLoot("marble", 0.6)
        inst.components.lootdropper:AddChanceLoot("marble", 0.5)
        inst.components.lootdropper:AddChanceLoot("marble", 0.4)
        inst.components.lootdropper:AddChanceLoot("coontail", 1)
        inst.components.lootdropper:AddChanceLoot("coontail", 0.5)
        inst.components.lootdropper:AddChanceLoot("chesspiece_klaus_marble", 0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_klaus_stone", 0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_klaus_moonglass", 0.7)
        inst.components.lootdropper:AddChanceLoot("goldenpickaxe", 0.5)
        inst.components.lootdropper:AddChanceLoot("goldenshovel", 0.5)
        inst.components.lootdropper:AddChanceLoot("goldenaxe", 0.5)
        inst.components.lootdropper:AddChanceLoot("golden_farm_hoe", 0.5)
        inst.components.lootdropper:AddChanceLoot("yellowstaff", 0.15)
        inst.components.lootdropper:AddChanceLoot("nightsword", 0.20)
        inst.components.lootdropper:AddChanceLoot("armor_sanity", 0.20)
        inst.components.lootdropper:AddChanceLoot("yellowamulet", 0.2)
        inst.components.lootdropper:AddChanceLoot("orangeamulet", 0.2)
        inst.components.lootdropper:AddChanceLoot("greenamulet", 0.2)
    end

end)




