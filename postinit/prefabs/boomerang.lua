local env=env
GLOBAL.setfenv(1,GLOBAL)


env.AddPrefabPostInit("boomerang",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.weapon~=nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_BOOMERANG_DAMAGE)
    end
    
end)




