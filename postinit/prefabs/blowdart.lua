local env = env
GLOBAL.setfenv(1,GLOBAL)


---------------------------------------------------------------------------------------------------------
--pipe

env.AddPrefabPostInit("blowdart_pipe",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if  inst.components.weapon~=nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_PIPE_DART_DAMAGE)
    end
end)

---------------------------------------------------------------------------------------------------------



