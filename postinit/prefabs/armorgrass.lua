local env = env
GLOBAL.setfenv(1,GLOBAL)




env.AddPrefabPostInit("armorgrass",function(inst)
    if not TheWorld.ismastersim then
        return 
    end

    if inst.components.fuel~=nil then
        inst.components.fuel.fuelvalue=TUNING.MED_FUEL
        -- print("armorgrass")
        -- print(inst.components.fuel.fuelvalue)
    end

    if inst.components.armor~=nil then
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMORGRASS_ABSORPTION)
        -- print("armorgrass")
        -- print(inst.components.armor.absorb_percent)
    end
end)






