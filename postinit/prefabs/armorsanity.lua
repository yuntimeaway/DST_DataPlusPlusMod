local env = env
GLOBAL.setfenv(1, GLOBAL)



env.AddPrefabPostInit("armor_sanity", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.armor~=nil then
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMOR_SANITY_ABSORPTION)
        inst.components.armor.ontakedamage = nil
    end

end)



