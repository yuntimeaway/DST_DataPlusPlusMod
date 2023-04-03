local env = env
GLOBAL.setfenv(1, GLOBAL)



--修改大理石甲在生成的初始化操作
env.AddPrefabPostInit("armormarble", function(inst)
    --判断是否是服务器
    if not TheWorld.ismastersim then
        return
    end
    --判断大理石是否有防御组件,如果有,则修改减伤比例
    if inst.components.armor ~= nil then
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMORMARBLE_ABSORPTION)
    end
    --判断大理石是否有可装配组件,如果有,则修改移动速度
    if inst.components.equippable ~= nil then
        inst.components.equippable.walkspeedmult = TUNING.DPP.DPP_ARMORMARBLE_WALKSPEEDMULT
        --print("AddPrefabPostInit armormarble walkspeedmult:" .. inst.components.equippable.walkspeedmult)
    end
end)



