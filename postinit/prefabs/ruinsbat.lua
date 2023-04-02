local env =env
GLOBAL.setfenv(1,GLOBAL)



--对铥矿棒生成的初始化修改
env.AddPrefabPostInit("ruins_bat",function(inst)
    --在服务器端执行
    if not TheWorld.ismastersim then
        return
    end
    --判断是否有武器组件,有则修改武器伤害值为TUNING.DPP.DPP_RUINS_BAT_DAMAGE,并且移除攻击时产生小触手的函数(效果)
    if inst.components.weapon~=nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_RUINS_BAT_DAMAGE)
        inst.components.weapon:SetOnAttack(nil)
    end
    --判断是否有使用次数组件,有则修改最大使用次数为TUNING.DPP.DPP_RUINS_BAT_USES,并且修改当前使用次数为TUNING.DPP.DPP_RUINS_BAT_USES
    if inst.components.finiteuses~=nil then
        inst.components.finiteuses:SetMaxUses(TUNING.DPP.DPP_RUINS_BAT_USES)
        inst.components.finiteuses:SetUses(TUNING.DPP.DPP_RUINS_BAT_USES)
        --print("AddPrefabPostInit ruins_bat",inst.components.finiteuses.total)
    end
end)





