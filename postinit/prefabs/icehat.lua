local env = env 
GLOBAL.setfenv(1,GLOBAL)



env.AddPrefabPostInit("icehat",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.perishable~=nil then
        inst.components.perishable:SetPerishTime(TUNING.PERISH_MED)
    end

    if inst.components.equippable~=nil then
        inst.components.equippable.walkspeedmult = 1
    end

end)



