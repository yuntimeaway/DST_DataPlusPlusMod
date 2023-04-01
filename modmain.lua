local require = GLOBAL.require
GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})

PrefabFiles = require("my_prefabs")

modimport("init")





