local env = env
GLOBAL.setfenv(1, GLOBAL)




env.AddPrefabPostInit("armorruins", function(inst)
    if not TheWorld.ismastersim then
        return
    end
    if inst.components.armor~=nil then
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMORRUINS_ABSORPTION)
    end
end)


