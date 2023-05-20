local env = env
GLOBAL.setfenv(1, GLOBAL)

env.AddPrefabPostInit("moose", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.lootdropper ~= nil then
        inst.components.lootdropper:AddChanceLoot("purplegem", 1)
        inst.components.lootdropper:AddChanceLoot("purplegem", 0.33)
        inst.components.lootdropper:AddChanceLoot('livinglog',1)
        inst.components.lootdropper:AddChanceLoot('livinglog',0.5)
        inst.components.lootdropper:AddChanceLoot('thulecite',0.4)
        inst.components.lootdropper:AddChanceLoot('thulecite',0.5)
        inst.components.lootdropper:AddChanceLoot('thulecite_pieces',0.6)
        inst.components.lootdropper:AddChanceLoot('staff_tornado',0.1)
        inst.components.lootdropper:AddChanceLoot('chesspiece_moosegoose_marble',0.7)
        inst.components.lootdropper:AddChanceLoot('chesspiece_moosegoose_stone',0.7)
        inst.components.lootdropper:AddChanceLoot('chesspiece_moosegoose_moonglass',0.7)

        inst.components.lootdropper:AddRandomLoot("red_cap",1)
        inst.components.lootdropper:AddRandomLoot("blue_cap",1)
        inst.components.lootdropper:AddRandomLoot("green_cap",1)
        inst.components.lootdropper.numrandomloot = math.random(5,10)
    end
end)



