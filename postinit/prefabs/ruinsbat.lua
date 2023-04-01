local env =env
GLOBAL.setfenv(1,GLOBAL)




env.AddPrefabPostInit("ruins_bat",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.weapon~=nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_RUINS_BAT_DAMAGE)
        inst.components.weapon:SetOnAttack(nil)
    end

    if inst.components.finiteuses~=nil then
        inst.components.finiteuses:SetMaxUses(TUNING.DPP.DPP_RUINS_BAT_USES)
        inst.components.finiteuses:SetUses(TUNING.DPP.DPP_RUINS_BAT_USES)
        print("AddPrefabPostInit ruins_bat",inst.components.finiteuses.total)
    end
end)





