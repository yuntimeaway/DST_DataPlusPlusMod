local env = env
GLOBAL.setfenv(1, GLOBAL)


env.AddPrefabPostInit("seedpouch",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.preserver ~=nil then
        inst.components.preserver:SetPerishRateMultiplier(TUNING.DPP.DPP_SEEDPOUCH_PERISH_RATE)
    end
end)