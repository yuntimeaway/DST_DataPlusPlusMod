local require = GLOBAL.require
GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})
--1.自定义游戏内文字内容
require "translator"
local currentLocale = LOC.GetLocale()
if currentLocale.id == LANGUAGE.CHINESE_S then --为简体中文时
    LanguageTranslator:LoadPOFile("scripts/languages/chinese_s_DPP.po", currentLocale.code)
end



--2.导入对游戏内容初始化处理部分的文件,从postinit下的init.lua导入
modimport("init")

--3.添加自定义prefabs的文件,从scripts下的my_prefabs.lua导入,就是一个table
PrefabFiles = require("my_prefabs")



