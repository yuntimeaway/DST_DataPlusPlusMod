local require = GLOBAL.require

--导入对游戏内容初始化自定义数据部分的文件,从postinit下的init_data.lua导入
modimport("postinit/my_tuning")

--导入对游戏物品栏初始化处理部分的文件,修改或者添加物品栏的物品
modimport("postinit/init_recipes")

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

    --背包
    "backpack",

    --火把
    "torch",
    
}

for _,v in pairs(prefabs_post) do
    modimport("postinit/prefabs/" .. v)
end



