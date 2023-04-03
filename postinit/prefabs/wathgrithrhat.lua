local env = env
GLOBAL.setfenv(1, GLOBAL)




--对女武神头盔进行初始化修改
env.AddPrefabPostInit("wathgrithrhat", function(inst)
    --判断是否是服务器
    if not TheWorld.ismastersim then
        return
    end
    --判断女武神头盔是否有防御组件,如果有,则修改减伤比例
    if inst.components.armor ~= nil then
        inst.components.armor:SetAbsorption(TUNING.DPP.DPP_ARMOR_WATHGRITHRHAT_ABSORPTION)
    end
end)