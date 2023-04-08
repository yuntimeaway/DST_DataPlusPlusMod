local env = env
GLOBAL.setfenv(1,GLOBAL)


local function NewCalcSanityAura(inst)
    return inst.components.combat.target ~= nil and -TUNING.SANITYAURA_MED or TUNING.SANITYAURA_TINY
end


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

end)
