local env = env
GLOBAL.setfenv(1, GLOBAL)


env.AddPrefabPostInit("minotaur", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.lootdropper~=nil then        
        inst.components.lootdropper:AddChanceLoot("livinglog", 1)
        inst.components.lootdropper:AddChanceLoot("livinglog", 0.5)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.6)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.4)
        inst.components.lootdropper:AddChanceLoot("krampus_sack", 0.05)
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
        inst.components.lootdropper:AddChanceLoot("chesspiece_minotaur_marble", 0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_minotaur_stone", 0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_minotaur_moonglass", 0.7)
        inst.components.lootdropper:AddChanceLoot("goldenpickaxe", 0.5)
        inst.components.lootdropper:AddChanceLoot("goldenshovel", 0.5)
        inst.components.lootdropper:AddChanceLoot("goldenaxe", 0.5)
        inst.components.lootdropper:AddChanceLoot("golden_farm_hoe", 0.5)
        inst.components.lootdropper:AddChanceLoot("opalpreciousgem", 0.05)
        inst.components.lootdropper:AddChanceLoot("greenstaff", 0.1)
        inst.components.lootdropper:AddChanceLoot("greenamulet", 0.1)
        inst.components.lootdropper:AddChanceLoot("nightstick", 0.4)
        inst.components.lootdropper:AddChanceLoot("ruinshat", 0.2)
        inst.components.lootdropper:AddChanceLoot("armorruins", 0.2)
    end

end)







