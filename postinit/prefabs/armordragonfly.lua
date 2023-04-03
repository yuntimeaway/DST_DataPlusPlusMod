local env = env
GLOBAL.setfenv(1, GLOBAL)


local function onequip(inst,owner)
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("equipskinneditem", inst:GetSkinName())
        owner.AnimState:OverrideItemSkinSymbol("swap_body", skin_build, "swap_body", inst.GUID, "torso_dragonfly")
    else
        owner.AnimState:OverrideSymbol("swap_body", "torso_dragonfly", "swap_body")
    end

    if owner.components.health ~= nil then
        owner.components.health.externalfiredamagemultipliers:SetModifier(inst, 1 - TUNING.ARMORDRAGONFLY_FIRE_RESIST)
    end
end

--对龙蝇甲生成的初始化修改
env.AddPrefabPostInit("armordragonfly", function(inst)
    --判断是否是服务器
    if not TheWorld.ismastersim then
        return
    end
    --判断龙蝇甲是否有可装配组件,如果有,则移除被点燃效果
    if inst.components.equippable ~= nil then
        inst.components.equippable:SetOnEquip(onequip)
        --print("AddPrefabPostInit armordragonfly: onequip()")
    end
end)



