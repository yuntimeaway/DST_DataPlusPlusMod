local env = env
GLOBAL.setfenv(1,GLOBAL)



env.AddPrefabPostInit("nightstick",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.weapon ~= nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_NIGHTSTICK_DAMAGE)
    end
end)




