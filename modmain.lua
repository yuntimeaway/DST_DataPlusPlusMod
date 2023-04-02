local require = GLOBAL.require
GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})

--添加自定义prefabs的文件,从scripts下的my_prefabs.lua导入,就是一个table
PrefabFiles = require("my_prefabs")

--导入对游戏内容初始化处理部分的文件,从postinit下的init.lua导入
modimport("init")





