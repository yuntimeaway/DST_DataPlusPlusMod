local env = env
GLOBAL.setfenv(1, GLOBAL)


env.AddPrefabPostInit("watermelonhat",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.equippable~=nil then
        inst.components.equippable.maxequippedmoisture = 24 -- Meter reading rounds up, so set 1 below
    end

    if inst.components.insulator~=nil then
        inst.components.insulator:SetInsulation(TUNING.INSULATION_MED_LARGE)
    end

    if inst.components.perishable~=nil then
        inst.components.perishable:SetPerishTime(TUNING.PERISH_FASTISH / 2) --4天
    end

end)




