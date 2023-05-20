local env = env
GLOBAL.setfenv(1,GLOBAL)


local function NewCalcSanityAura(inst)
    return inst.components.combat.target ~= nil and -TUNING.SANITYAURA_MED or TUNING.SANITYAURA_TINY
end

SetSharedLootTable('deerclops',
{
    {'bluegem',                        1.0},
    {'bluegem',                        0.4},
    {'bluegem',                        0.2},
    {'livinglog',                      1.0},
    {'livinglog',                      0.5}, 
    {'thulecite',                      0.4},
    {'thulecite_pieces',               0.6},
    {'thulecite_pieces',               0.5},
    {'chesspiece_deerclops_marble',               0.7},
    {'chesspiece_deerclops_stone',                0.7},
    {'chesspiece_deerclops_moonglass',            0.7},
})

--巨鹿
env.AddPrefabPostInit("deerclops", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.combat~=nil then
        --因为玩家有一半的减伤比例,所以设置为180,减伤完之后为90
        inst.components.combat:SetDefaultDamage(TUNING.DPP.DPP_DEERCLOPS_DAMAGE)
    end

    if inst.components.sanityaura~=nil then
        inst.components.sanityaura.aurafn = NewCalcSanityAura
    end

    if inst.components.lootdropper~=nil then
        inst.components.lootdropper:SetChanceLootTable('deerclops')

        inst.components.lootdropper:AddRandomLoot("greengem",1)
        inst.components.lootdropper:AddRandomLoot("orangegem",1)
        inst.components.lootdropper:AddRandomLoot("",7)
        inst.components.lootdropper:AddRandomLoot("yellowgem",1)
        inst.components.lootdropper:AddRandomLoot("amulet",2)
        inst.components.lootdropper:AddRandomLoot("blueamulet",2)
        inst.components.lootdropper.numrandomloot = 1
    end

end)
