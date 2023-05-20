local env = env
GLOBAL.setfenv(1, GLOBAL)




env.AddPrefabPostInit("antlion", function(inst)
    if not TheWorld.ismastersim then
        return
    end
    if inst.components.lootdropper ~=nil then
        inst.components.lootdropper:AddChanceLoot("meat",1.0)
        inst.components.lootdropper:AddChanceLoot("meat",1.0)
        inst.components.lootdropper:AddChanceLoot("heatrock",1.0)
        inst.components.lootdropper:AddChanceLoot("townportaltalisman",1.0)
        inst.components.lootdropper:AddChanceLoot("townportaltalisman",1.0)
        inst.components.lootdropper:AddChanceLoot("townportaltalisman",1.0)
        inst.components.lootdropper:AddChanceLoot("townportaltalisman",1.0)
        inst.components.lootdropper:AddChanceLoot("townportaltalisman",1.0)
        inst.components.lootdropper:AddChanceLoot("townportaltalisman",1.0)
        inst.components.lootdropper:AddChanceLoot("yellowamulet",0.05)
        inst.components.lootdropper:AddChanceLoot("yellowstaff",0.05)
        inst.components.lootdropper:AddChanceLoot("chesspiece_antlion_marble",0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_antlion_stone",0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_antlion_moonglass",0.7)

        inst.components.lootdropper:AddRandomLoot("orangegem",1)
        inst.components.lootdropper:AddRandomLoot("greengem",1)
        inst.components.lootdropper:AddRandomLoot("yellowgem",1)
        inst.components.lootdropper:AddRandomLoot("",27)
        inst.components.lootdropper.numrandomloot = 1

    end
end)






