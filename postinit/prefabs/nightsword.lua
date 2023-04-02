
local env=env
GLOBAL.setfenv(1,GLOBAL)


--对影刀生成的初始化修改
env.AddPrefabPostInit("nightsword",function(inst)
    --在服务器端执行
    if not TheWorld.ismastersim then
        return 
    end
    --判断是否有武器组件,有则修改武器伤害值为TUNING.DPP.DPP_NIGHTSWORD_DAMAGE
    if inst.components.weapon~=nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_NIGHTSWORD_DAMAGE)
    end
    
    --设置影刀拿着时，持续降低san值的数值大小，设置为原来一半 即6s减一点
    if inst.components.equippable~=nil then
        inst.components.equippable.dapperness = TUNING.CRAZINESS_MED/2
        -- print("nightsword")
        -- print(inst.components.equippable.dapperness)
    end
    
end)



