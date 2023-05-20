local env = env
GLOBAL.setfenv(1, GLOBAL)


env.AddPrefabPostInit("spat", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.lootdropper~=nil then
        inst.components.lootdropper:AddChanceLoot('orangeamulet',0.2)
        inst.components.lootdropper:AddChanceLoot('thulecite',0.4)
        inst.components.lootdropper:AddChanceLoot('thulecite_pieces',0.6)
        inst.components.lootdropper:AddChanceLoot('livinglog',1)
        inst.components.lootdropper:AddChanceLoot('livinglog',0.5)
        inst.components.lootdropper:AddChanceLoot('brush',0.6)
        


        inst.components.lootdropper:AddRandomLoot("redgem",1)
        inst.components.lootdropper:AddRandomLoot("purplegem",1)
        inst.components.lootdropper:AddRandomLoot("bluegem",1)
        inst.components.lootdropper.numrandomloot = math.random(1,2)
    end
end)




