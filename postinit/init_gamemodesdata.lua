local env = env
GLOBAL.setfenv(1, GLOBAL)


--修改正常模式(survival)下的玩家物品栏数量
env.GAME_MODES.survival.override_item_slots= 11


