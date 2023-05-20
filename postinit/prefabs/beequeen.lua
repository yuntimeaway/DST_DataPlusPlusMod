local env = env
GLOBAL.setfenv(1, GLOBAL)



env.AddPrefabPostInit("beequeen",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.lootdropper ~= nil then
        inst.components.lootdropper:AddChanceLoot("redgem", 1)
        inst.components.lootdropper:AddChanceLoot("purplegem", 1)
        inst.components.lootdropper:AddChanceLoot("bluegem", 1)
        inst.components.lootdropper:AddChanceLoot("yellowgem", 0.7)
        inst.components.lootdropper:AddChanceLoot("orangegem", 0.7)
        inst.components.lootdropper:AddChanceLoot("greengem", 0.7)

        inst.components.lootdropper:AddChanceLoot("opalstaff", 0.1)
        inst.components.lootdropper:AddChanceLoot("greenstaff", 0.15)
        inst.components.lootdropper:AddChanceLoot("featherhat", 0.4)
        inst.components.lootdropper:AddChanceLoot("krampus_sack", 0.05)
        inst.components.lootdropper:AddChanceLoot("chesspiece_beequeen_marble", 0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_beequeen_stone", 0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_beequeen_moonglass", 0.7)
        inst.components.lootdropper:AddChanceLoot("ruinshat", 0.4)
        inst.components.lootdropper:AddChanceLoot("armorruins", 0.4)
        inst.components.lootdropper:AddChanceLoot("glasscutter", 1)
        inst.components.lootdropper:AddChanceLoot("glasscutter", 1)
        inst.components.lootdropper:AddChanceLoot("glasscutter", 0.4)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 1)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.8)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.6)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.5)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.4)
        inst.components.lootdropper:AddChanceLoot("nightmarefuel", 0.2)
        inst.components.lootdropper:AddChanceLoot("yellowamulet", 0.2)
        inst.components.lootdropper:AddChanceLoot("orangeamulet", 0.2)
        inst.components.lootdropper:AddChanceLoot("greenamulet", 0.2)

        inst.components.lootdropper:AddRandomLoot("pepper_seeds", 1)
        inst.components.lootdropper:AddRandomLoot("dragonfruit_seeds", 1)
        inst.components.lootdropper.numrandomloot = math.random(8, 16)
    end
end)






