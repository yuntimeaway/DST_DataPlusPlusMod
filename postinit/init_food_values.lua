local env =env 
GLOBAL.setfenv(1, GLOBAL)
local foods = require("preparedfoods")


------------------------------------------------------------------------------

--修改肉丸子的饥饿值
foods.meatballs.hunger = TUNING.DPP.DPP_MEATBALLS_HUNGER




------------------------------------------------------------------------------







