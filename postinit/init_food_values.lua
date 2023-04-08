local env =env 
GLOBAL.setfenv(1, GLOBAL)
local foods = require("preparedfoods")


------------------------------------------------------------------------------
--修改肉丸子的饥饿值
foods.meatballs.hunger = TUNING.DPP.DPP_MEATBALLS_HUNGER

------------------------------------------------------------------------------
--烤熟的大肉
env.AddPrefabPostInit("cookedmeat", function(inst)
    if not TheWorld.ismastersim then
        return inst
    end

    if inst.components.edible ~=nil then
        inst.components.edible.hungervalue = TUNING.CALORIES_MEDSMALL
        inst.components.edible.sanityvalue = TUNING.SANITY_TINY
    end
end)

------------------------------------------------------------------------------





