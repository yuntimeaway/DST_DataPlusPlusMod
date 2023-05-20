local env = env
GLOBAL.setfenv(1, GLOBAL)


env.AddPrefabPostInit("bearger", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.lootdropper ~= nil then
        inst.components.lootdropper:AddChanceLoot("livinglog",1)
        inst.components.lootdropper:AddChanceLoot("livinglog",0.5)
        inst.components.lootdropper:AddChanceLoot("livinglog",1)
        inst.components.lootdropper:AddChanceLoot("livinglog",0.5)
        inst.components.lootdropper:AddChanceLoot("cane",0.3)
        inst.components.lootdropper:AddChanceLoot("orangeamulet",0.2)
        inst.components.lootdropper:AddChanceLoot("honeycomb",0.6)
        inst.components.lootdropper:AddChanceLoot("honey",0.8)
        inst.components.lootdropper:AddChanceLoot("honey",0.8)
        inst.components.lootdropper:AddChanceLoot("honey",0.6)
        inst.components.lootdropper:AddChanceLoot("honey",0.4)
        inst.components.lootdropper:AddChanceLoot("chesspiece_bearger_marble",0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_bearger_stone",0.7)
        inst.components.lootdropper:AddChanceLoot("chesspiece_bearger_moonglass",0.7)

        inst.components.lootdropper:AddRandomLoot("redgem",1)
        inst.components.lootdropper:AddRandomLoot("purplegem",1)
        inst.components.lootdropper:AddRandomLoot("bluegem",1)
        inst.components.lootdropper.numrandomloot = math.random(1,3)
    end
end)




