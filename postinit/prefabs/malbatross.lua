local env = env
GLOBAL.setfenv(1, GLOBAL)

env.AddPrefabPostInit("malbatross", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.lootdropper ~= nil then
        inst.components.lootdropper:AddChanceLoot("saltrock", 1)
        inst.components.lootdropper:AddChanceLoot("saltrock", 1)
        inst.components.lootdropper:AddChanceLoot("saltrock", 1)
        inst.components.lootdropper:AddChanceLoot("saltrock", 1)
        inst.components.lootdropper:AddChanceLoot("saltrock", 0.8)
        inst.components.lootdropper:AddChanceLoot("saltrock", 0.6)
        inst.components.lootdropper:AddChanceLoot("saltrock", 0.4)
        inst.components.lootdropper:AddChanceLoot("saltrock", 0.2)
        inst.components.lootdropper:AddChanceLoot("chesspiece_malbatross_marble", 0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_malbatross_stone", 0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_malbatross_moonglass", 0.7)
        inst.components.lootdropper:AddChanceLoot("bundlewrap", 1)
        inst.components.lootdropper:AddChanceLoot("bundlewrap", 0.5)
        inst.components.lootdropper:AddChanceLoot("thulecite_pieces", 1)
        inst.components.lootdropper:AddChanceLoot("thulecite_pieces", 0.6)
        inst.components.lootdropper:AddChanceLoot("thulecite_pieces", 0.5)
        inst.components.lootdropper:AddChanceLoot("livinglog", 1)
        inst.components.lootdropper:AddChanceLoot("livinglog", 0.5)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.7)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.4)


        inst.components.lootdropper:AddRandomLoot("amulet",1)
        inst.components.lootdropper:AddRandomLoot("icestaff",1)
        inst.components.lootdropper:AddRandomLoot("blueamulet",1)
        inst.components.lootdropper.numrandomloot = math.random(1,2)
    end
end)







