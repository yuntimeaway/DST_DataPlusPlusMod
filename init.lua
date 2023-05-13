local require = GLOBAL.require

--导入对游戏内容初始化自定义数据部分的文件,从postinit下的init_data.lua导入
modimport("postinit/my_tuning")

modimport("postinit/init_gamemodesdata")

--导入对游戏物品栏初始化处理部分的文件,修改或者添加物品栏的物品
modimport("postinit/init_recipes")

--导入对游戏已存在的食谱的食物属性初始化处理部分的文件,修改食物的属性,如饥饿值,生命值,精神值等
modimport("postinit/init_food_values")

--导入对游戏内容初始化具体处理部分的文件名,后续用for处理
local prefabs_post = 
{
    --武器
    "hambat",
    "nightsword",
    "batbat",
    "nightstick",
    "ruinsbat",
    "whip",
    "boomerang",
    "blowdart",

    --防具
    "footballhat",
    "armorwood",
    "armorgrass",
    "wathgrithrhat",
    "armormarble",
    "armordragonfly",
    "ruinshat",
    "armorruins",
    "armorsanity",

    --BOSS
    "deerclops",

    --背包
    "backpack",
    --火把
    "torch",

    --花
    "flower",

    --种子袋
    "seedpouch",

    --独奏乐器
    "onemanband",

    "armorslurper",

    "tophat",

    "rainhat",

    "catcoonhat",
    
}

for _,v in pairs(prefabs_post) do
    modimport("postinit/prefabs/" .. v)
end



