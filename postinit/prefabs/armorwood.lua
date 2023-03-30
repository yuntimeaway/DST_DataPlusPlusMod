local env=env
GLOBAL.setfenv(1,GLOBAL)

local function UpdateFuelValue(inst,target)
    if inst.components.fuel ~=nil and inst.components.armor~=nil and target~=nil then
        --print(inst.components.armor:GetPercent())
        if inst.components.armor:GetPercent()<0.5 then
            inst.components.fuel.fuelvalue = TUNING.MED_FUEL
        end
        --print(inst.components.fuel.fuelvalue)
    end
end

env.AddPrefabPostInit("armorwood",function(inst)
    if not TheWorld.ismastersim then
        return 
    end
    if inst.components.armor ~=nil then
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMORWOOD_ABSORPTION)
    end
    if inst.components.equippable~=nil and inst.components.fuel~=nil then
        inst.components.fuel:SetOnTakenFn(UpdateFuelValue) 
    end
end)



