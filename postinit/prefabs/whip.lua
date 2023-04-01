local env = env
GLOBAL.setfenv(1, GLOBAL)




env.AddPrefabPostInit("whip", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.weapon ~= nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_WHIP_DAMAGE)
    end

    if inst.components.finiteuses ~= nil then
        inst.components.finiteuses:SetMaxUses(TUNING.DPP.DPP_WHIP_USES)
        inst.components.finiteuses:SetUses(TUNING.DPP.DPP_WHIP_USES)
        print("AddPrefabPostInit whip",inst.components.finiteuses.total)
    end
end)