local env = env
GLOBAL.setfenv(1,GLOBAL)
require("recipe")

--这里1.修改物品配方的材料(资源)和数量,通过AddRecipePostInit方法修改
--2.新增某个物品配方的材料(资源)和数量,通过AddRecipe2方法修改

---------------------------------------------------------------------------------------------------------
--修改木甲配方为6个木头和2个绳子
env.AddRecipePostInit("armorwood",function(self)
    --print("AddRecipePostInit")
    --判断木甲配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        --print("armorwood")
        GetValidRecipe(self.name).ingredients={Ingredient("log", 6),Ingredient("rope", 2)}
    end
end)


---------------------------------------------------------------------------------------------------------
--修改草甲配方为6个草和4个树枝
env.AddRecipePostInit("armorgrass",function(self)
    --判断草甲配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("cutgrass", 6),Ingredient("twigs", 4)}
    end
end)


---------------------------------------------------------------------------------------------------------
--修改影刀配方为6个梦魇燃料和1个活木和1个紫宝石
env.AddRecipePostInit("nightsword",function(self)
    --判断影刀配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("nightmarefuel", 6),Ingredient("livinglog", 1),Ingredient("purplegem", 1)}
    end
end)


---------------------------------------------------------------------------------------------------------
--修改女武神长矛配方为4个树枝和2个燧石和3个金块
env.AddRecipePostInit("spear_wathgrithr",function(self)
    --判断女武神长矛配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("twigs", 4),Ingredient("flint", 2),Ingredient("goldnugget", 3)}
    end
end)

--修改女武神头盔配方为2个金块和2个石头和1个绳子
env.AddRecipePostInit("wathgrithrhat",function(self)
    --判断女武神头盔配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("goldnugget", 2), Ingredient("rocks", 2), Ingredient("rope",1)}
    end
end)


---------------------------------------------------------------------------------------------------------
--blowdart_pipe
--修改吹箭配方为1个草笛和2个石头和1个乌鸦羽毛
env.AddRecipePostInit("blowdart_pipe",function(self)
    --判断吹箭配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("cutreeds", 1),Ingredient("rocks", 2),Ingredient("feather_crow", 1)}
        --修改吹箭配方的制作给与的数量为2个
        GetValidRecipe(self.name).numtogive = 2
    end
end)
--新增吹箭配方为1个草笛和2个石头和1个冬鸟羽毛
env.AddRecipe2(
    "blowdart_pipe1", --新配方名称
    {Ingredient("cutreeds", 1),Ingredient("rocks", 2),Ingredient("feather_robin_winter", 1)}, --制作所需材料
    TECH.SCIENCE_TWO, --制作需要什么科技等级
    {product ="blowdart_pipe",numtogive = 2},--实际制作出来的prefab名称和数量
    {"WEAPONS","MODS"}) --新配方所属过滤器的标签

env.AddRecipe2(
    "blowdart_pipe2", 
    {Ingredient("cutreeds", 1),Ingredient("rocks", 2),Ingredient("feather_robin", 1)},
    TECH.SCIENCE_TWO,
    {product ="blowdart_pipe",numtogive = 2},
    {"WEAPONS","MODS"})

env.AddRecipe2(
    "blowdart_pipe3", 
    {Ingredient("cutreeds", 1),Ingredient("rocks", 2),Ingredient("feather_canary", 1)},
    TECH.SCIENCE_TWO,
    {product = "blowdart_pipe",numtogive = 2},
    {"WEAPONS","MODS"})
---------------------------------------------------------------------------------------------------------
--修改魂甲配方为四个梦魇燃料，一个草砂纸，一个绳子
env.AddRecipePostInit("armor_sanity",function(self)
    --判断魂甲配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("nightmarefuel", 4),Ingredient("papyrus", 1),Ingredient("rope",1)}
    end
end)


---------------------------------------------------------------------------------------------------------
--修改提灯配方为三个树枝，两个绳子，两个荧光果，一个红宝石
env.AddRecipePostInit("lantern",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("twigs", 3), Ingredient("rope", 2), Ingredient("lightbulb", 2),Ingredient("redgem", 1)}
    end
end)
--添加提灯配方为三个树枝，两个绳子，两个荧光果，一个蓝宝石
env.AddRecipe2(
    "lantern1",
    {Ingredient("twigs", 3), Ingredient("rope", 2), Ingredient("lightbulb", 2),Ingredient("bluegem", 1)},
    TECH.SCIENCE_TWO,
    {product = "lantern",numtogive = 1},
    {"LIGHT","MODS"})

---------------------------------------------------------------------------------------------------------
--修改鼹鼠帽配方为两个鼹鼠，两个电子元件，一个发光浆果，一个紫宝石
env.AddRecipePostInit("molehat",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("mole", 2), Ingredient("transistor", 2), Ingredient("wormlight", 1),Ingredient("purplegem", 1)}
    end
end)


---------------------------------------------------------------------------------------------------------
--修改暖石配方为八个石头，一个镐子，两个燧石
env.AddRecipePostInit("heatrock",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("rocks", 8),Ingredient("pickaxe", 1), Ingredient("flint", 2)}
    end
end)


---------------------------------------------------------------------------------------------------------
--修改皮鞭配方为两个猫尾，一个触手皮
env.AddRecipePostInit("whip",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("coontail", 2), Ingredient("tentaclespots", 1)}
    end
end)

---------------------------------------------------------------------------------------------------------
--种子袋
env.AddRecipePostInit("seedpouch",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("slurtle_shellpieces", 2), Ingredient("rope", 4),
                                                 Ingredient("seeds", 2),Ingredient("Papyrus", 2),Ingredient("twigs", 6)}
    end
end)

---------------------------------------------------------------------------------------------------------
--保鲜背包
env.AddRecipePostInit("icepack",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("bearger_fur", 1), Ingredient("gears", 2), Ingredient("transistor", 2)}
    end
end)

---------------------------------------------------------------------------------------------------------
--独奏乐器
env.AddRecipePostInit("onemanband",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("goldnugget", 2),Ingredient("nightmarefuel", 3),Ingredient("pigskin", 1)}
    end
end)

---------------------------------------------------------------------------------------------------------
--雨帽
env.AddRecipePostInit("rainhat",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("mole", 1), Ingredient("strawhat", 1), Ingredient("boneshard", 2),Ingredient("tentaclespots", 1)}
    end
end)

---------------------------------------------------------------------------------------------------------
--牛角帽
env.AddRecipePostInit("beefalohat",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("beefalowool", 8),Ingredient("horn", 1),Ingredient("rope",2)}
    end
end)

---------------------------------------------------------------------------------------------------------
--刮地皮头盔
env.AddRecipePostInit("antlionhat",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("beefalowool", 8), Ingredient("pigskin", 4), Ingredient("townportaltalisman", 3)}
    end
end)

---------------------------------------------------------------------------------------------------------
--松软背心
env.AddRecipePostInit("trunkvest_winter",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("trunk_winter", 1),Ingredient("silk", 8), Ingredient("beefalowool", 4),Ingredient("bluegem", 1)}
    end
end)

---------------------------------------------------------------------------------------------------------
--清凉夏装
env.AddRecipePostInit("reflectivevest",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("rope", 1), Ingredient("feather_robin", 2), Ingredient("pigskin", 1)}
    end
end)

---------------------------------------------------------------------------------------------------------
--熊皮背心
env.AddRecipePostInit("beargervest",function(self)
    --判断配方在全局配方表中是否存在
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("bearger_fur", 1), Ingredient("sweatervest", 1), Ingredient("rope", 2),Ingredient("redgem", 1)}
    end
end)
