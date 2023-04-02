local env = env
GLOBAL.setfenv(1,GLOBAL)



--对草甲生成的初始化修改
env.AddPrefabPostInit("armorgrass",function(inst)
    --在服务器端执行
    if not TheWorld.ismastersim then
        return 
    end
    --判断是否有燃料组件(举例来说就是是否可以往火堆添加东西等等之类),有则修改燃料值为MED_FUEL
    if inst.components.fuel~=nil then
        inst.components.fuel.fuelvalue=TUNING.MED_FUEL
        -- print("armorgrass")
        -- print(inst.components.fuel.fuelvalue)
    end
    --判断是否有护甲组件,有则修改护甲值为TUNING.DPP.DPP_ARMORGRASS_ABSORPTION
    if inst.components.armor~=nil then
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMORGRASS_ABSORPTION)
        -- print("armorgrass")
        -- print(inst.components.armor.absorb_percent)
    end
end)






