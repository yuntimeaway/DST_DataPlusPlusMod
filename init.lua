local require = GLOBAL.require

modimport("postinit/my_tuning")


local prefabs_post = 
{
    "hambat",
    "footballhat",
}



for _,v in pairs(prefabs_post) do
    modimport("postinit/prefabs/" .. v)
end