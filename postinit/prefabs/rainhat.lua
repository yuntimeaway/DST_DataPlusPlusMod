local env = env 
GLOBAL.setfenv(1, GLOBAL)




env.AddPrefabPostInit("rainhat",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.waterproofer~=nil then
        inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_HUGE)
        --print(inst.components.waterproofer:GetEffectiveness())
    end
end)




