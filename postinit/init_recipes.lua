local env = env
GLOBAL.setfenv(1,GLOBAL)
require("recipe")

---------------------------------------------------------------------------------------------------------

env.AddRecipePostInit("armorwood",function(self)
    --print("AddRecipePostInit")
    if  IsRecipeValid(self.name) then
        --print("armorwood")
        GetValidRecipe(self.name).ingredients={Ingredient("log", 6),Ingredient("rope", 2)}
    end
end)


---------------------------------------------------------------------------------------------------------

env.AddRecipePostInit("armorgrass",function(self)
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("cutgrass", 6),Ingredient("twigs", 4)}
    end
end)


---------------------------------------------------------------------------------------------------------

env.AddRecipePostInit("nightsword",function(self)
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("nightmarefuel", 6),Ingredient("livinglog", 1),Ingredient("purplegem", 1)}
    end
end)


---------------------------------------------------------------------------------------------------------

env.AddRecipePostInit("spear_wathgrithr",function(self)
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("twigs", 4),Ingredient("flint", 2),Ingredient("goldnugget", 3)}
    end
end)

---------------------------------------------------------------------------------------------------------
--blowdart_pipe
env.AddRecipePostInit("blowdart_pipe",function(self)
    if  IsRecipeValid(self.name) then
        GetValidRecipe(self.name).ingredients={Ingredient("cutreeds", 1),Ingredient("rocks", 2),Ingredient("feather_crow", 1)}
        GetValidRecipe(self.name).numtogive = 2
    end
end)

env.AddRecipe2(
    "blowdart_pipe1", 
    {Ingredient("cutreeds", 1),Ingredient("rocks", 2),Ingredient("feather_robin_winter", 1)},
    TECH.SCIENCE_TWO,
    {product ="blowdart_pipe",numtogive = 2},
    {"WEAPONS","MODS"})

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


