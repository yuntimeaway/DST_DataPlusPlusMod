
local env=env
GLOBAL.setfenv(1,GLOBAL)



env.AddPrefabPostInit("nightsword",function(inst)
    if not TheWorld.ismastersim then
        return 
    end

    if inst.components.weapon~=nil then
        inst.components.weapon:SetDamage(TUNING.DPP.DPP_NIGHTSWORD_DAMAGE)
    end
    
    --设置影刀拿着时，持续降低san值的数值大小，设置为原来一般 即6s减一点
    if inst.components.equippable~=nil then
        inst.components.equippable.dapperness = TUNING.CRAZINESS_MED/2
        -- print("nightsword")
        -- print(inst.components.equippable.dapperness)
    end
    
end)



