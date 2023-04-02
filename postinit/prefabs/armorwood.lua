local env=env
GLOBAL.setfenv(1,GLOBAL)

--用于设置燃料组件SetOnTakenFn的函数
local function UpdateFuelValue(inst,target)
    --在被当作燃料的时候调用,判断是否有燃料组件和护甲组件,有则则判断当前护具耐久百分比是否小于百分之五十,如果为真修改燃料值为MED_FUEL
    if inst.components.fuel ~=nil and inst.components.armor~=nil and target~=nil then
        --print(inst.components.armor:GetPercent())
        if inst.components.armor:GetPercent()<0.5 then
            inst.components.fuel.fuelvalue = TUNING.MED_FUEL
        end
        --print(inst.components.fuel.fuelvalue)
    end
end

--对木甲生成的初始化修改
env.AddPrefabPostInit("armorwood",function(inst)
    -- 在服务器端执行
    if not TheWorld.ismastersim then
        return 
    end
    --判断是否有护甲组件,有则修改护甲值为TUNING.DPP.DPP_ARMORWOOD_ABSORPTION
    if inst.components.armor ~=nil then
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMORWOOD_ABSORPTION)
    end
    --判断是否有装备组件和燃料组件,有则在设置燃料组件的OnTakenFn函数为UpdateFuelValue,即当该prefab被当作燃料使用时会调用UpdateFuelValue函数
    if inst.components.equippable~=nil and inst.components.fuel~=nil then
        inst.components.fuel:SetOnTakenFn(UpdateFuelValue) 
    end
end)



