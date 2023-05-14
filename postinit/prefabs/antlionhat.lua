local env = env
GLOBAL.setfenv(1, GLOBAL)



env.AddPrefabPostInit("antlionhat", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.finiteuses~=nil then
        inst.components.finiteuses:SetMaxUses(TUNING.DPP.DPP_ANTLIONHAT_USES)
        inst.components.finiteuses:SetUses(TUNING.DPP.DPP_ANTLIONHAT_USES)
    end

end)

