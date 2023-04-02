local env = env
GLOBAL.setfenv(1,GLOBAL)


--对晨星锤生成的初始化修改
env.AddPrefabPostInit("nightstick",function(inst)
    --在服务器端执行
    if not TheWorld.ismastersim then
        return
    end
    --判断是否有武器组件,有则修改武器伤害值为TUNING.DPP.DPP_NIGHTSTICK_DAMAGE
    if inst.components.weapon ~= nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_NIGHTSTICK_DAMAGE)
    end
end)




