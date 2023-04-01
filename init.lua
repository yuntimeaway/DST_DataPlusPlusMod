local require = GLOBAL.require

modimport("postinit/my_tuning")

modimport("postinit/init_recipes")

local prefabs_post = 
{
    "hambat",
    "nightsword",
    "batbat",
    "nightstick",
    "ruinsbat",
    "whip",
    "boomerang",
    "blowdart",
    "footballhat",
    "armorwood",
    "armorgrass",
    
}

for _,v in pairs(prefabs_post) do
    modimport("postinit/prefabs/" .. v)
end



