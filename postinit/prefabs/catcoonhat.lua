local env = env
GLOBAL.setfenv(1, GLOBAL)





env.AddPrefabPostInit("catcoonhat", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.insulator ~= nil then
        inst.components.insulator:SetInsulation(TUNING.INSULATION_MED)
        print(inst.components.insulator:GetInsulation())
    end

end)





