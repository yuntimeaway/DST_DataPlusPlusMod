local env = env
GLOBAL.setfenv(1, GLOBAL)



env.AddPrefabPostInit("footballhat",function(inst)
    if not TheWorld.ismastersim then
        return
    end
    
    if inst.components.armor~=nil then
        --print("footballhat")
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMOR_FOOTBALLHAT_ABSORPTION)
    end
end)



