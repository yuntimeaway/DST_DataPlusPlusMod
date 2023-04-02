local env = env
GLOBAL.setfenv(1, GLOBAL)


--对猪皮帽生成的初始化修改
env.AddPrefabPostInit("footballhat",function(inst)
    --在服务器端执行
    if not TheWorld.ismastersim then
        return
    end
    --判断是否有护甲组件,有则修改护甲减伤为TUNING.DPP.DPP_ARMOR_FOOTBALLHAT_ABSORPTION
    if inst.components.armor~=nil then
        --print("footballhat")
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMOR_FOOTBALLHAT_ABSORPTION)
    end
end)



