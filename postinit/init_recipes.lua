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


