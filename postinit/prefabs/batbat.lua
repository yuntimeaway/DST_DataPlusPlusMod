local env=env
GLOBAL.setfenv(1,GLOBAL)




env.AddPrefabPostInit("batbat",function(inst)
    if not TheWorld.ismastersim then
        return
    end
    
    --print("AddPrefabPostInit")
    if inst.components.weapon ~= nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_BATBAT_DAMAGE)
    end
end)


