local env = env
GLOBAL.setfenv(1, GLOBAL)



--对鞭子生成的初始化修改
env.AddPrefabPostInit("whip", function(inst)
    --在服务器端执行
    if not TheWorld.ismastersim then
        return
    end
    --判断是否有武器组件,有则修改武器伤害值为TUNING.DPP.DPP_WHIP_DAMAGE
    if inst.components.weapon ~= nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_WHIP_DAMAGE)
    end
    --判断是否有使用次数组件,有则修改武器使用次数为TUNING.DPP.DPP_WHIP_USES
    if inst.components.finiteuses ~= nil then
        inst.components.finiteuses:SetMaxUses(TUNING.DPP.DPP_WHIP_USES)
        inst.components.finiteuses:SetUses(TUNING.DPP.DPP_WHIP_USES)
        --print("AddPrefabPostInit whip",inst.components.finiteuses.total)
    end
end)