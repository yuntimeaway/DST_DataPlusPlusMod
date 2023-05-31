local env = env
GLOBAL.setfenv(1, GLOBAL)



local Names ={"bishop","bishop_nightmare","knight","knight_nightmare"}



for i, Name in ipairs(Names) do
    env.AddPrefabPostInit(Name, function(inst)
        if not TheWorld.ismastersim then
            return
        end
        
        if inst.components.lootdropper ~= nil then
            inst.components.lootdropper.numrandomloot = 1
            inst.components.lootdropper:AddRandomLoot("goldnugget", 5)
            inst.components.lootdropper:AddRandomLoot("rocks", 5)
            inst.components.lootdropper:AddRandomLoot("silk", 5)
            inst.components.lootdropper:AddRandomLoot("spidergland", 5)
            inst.components.lootdropper:AddRandomLoot("stinger", 5)
            inst.components.lootdropper:AddRandomLoot("poop", 5)
            inst.components.lootdropper:AddRandomLoot("log", 5)
            inst.components.lootdropper:AddRandomLoot("boards", 5)
            inst.components.lootdropper:AddRandomLoot("cutgrass", 5)
            inst.components.lootdropper:AddRandomLoot("rope", 5)
            inst.components.lootdropper:AddRandomLoot("twigs", 5)
            inst.components.lootdropper:AddRandomLoot("cutstone", 5)
            inst.components.lootdropper:AddRandomLoot("thulecite_pieces", 5)
            inst.components.lootdropper:AddRandomLoot("featherpencil", 5)
            inst.components.lootdropper:AddRandomLoot("torch", 5)
            inst.components.lootdropper:AddRandomLoot("green_cap", 5)
            inst.components.lootdropper:AddRandomLoot("blue_cap", 5)
            inst.components.lootdropper:AddRandomLoot("red_cap", 5)
            inst.components.lootdropper:AddRandomLoot("seeds", 5)
            inst.components.lootdropper:AddRandomLoot("gears", 5)
            inst.components.lootdropper:AddRandomLoot("houndstooth", 5)
            inst.components.lootdropper:AddRandomLoot("spear", 5)
            inst.components.lootdropper:AddRandomLoot("hammer", 5)

            inst.components.lootdropper:AddRandomLoot("", 180)

            inst.components.lootdropper:AddRandomLoot("shovel", 5)
            inst.components.lootdropper:AddRandomLoot("axe", 5)
            inst.components.lootdropper:AddRandomLoot("pickaxe", 5)
            inst.components.lootdropper:AddRandomLoot("goldenaxe", 5)
            inst.components.lootdropper:AddRandomLoot("goldenpickaxe", 5)
            inst.components.lootdropper:AddRandomLoot("goldenshovel", 5)
            inst.components.lootdropper:AddRandomLoot("beefalowool", 5)
            inst.components.lootdropper:AddRandomLoot("beardhair", 5)
            inst.components.lootdropper:AddRandomLoot("saltrock", 5)
            inst.components.lootdropper:AddRandomLoot("saltrock", 5)
            inst.components.lootdropper:AddRandomLoot("feather_crow", 5)
            inst.components.lootdropper:AddRandomLoot("grass_umbrella", 5)
            inst.components.lootdropper:AddRandomLoot("trap", 5)
            inst.components.lootdropper:AddRandomLoot("boatpatch", 5)
            inst.components.lootdropper:AddRandomLoot("strawhat", 5)
            inst.components.lootdropper:AddRandomLoot("purplegem", 3)
            inst.components.lootdropper:AddRandomLoot("bluegem", 3)
            inst.components.lootdropper:AddRandomLoot("redgem", 3)
            inst.components.lootdropper:AddRandomLoot("marble", 5)
            inst.components.lootdropper:AddRandomLoot("minifan", 5)
            inst.components.lootdropper:AddRandomLoot("cutreeds", 5)
            inst.components.lootdropper:AddRandomLoot("papyrus", 5)
            inst.components.lootdropper:AddRandomLoot("fishingrod", 5)
            inst.components.lootdropper:AddRandomLoot("manrabbit_tail", 5)
    
            inst.components.lootdropper:AddRandomLoot("nightmarefuel", 3)
            inst.components.lootdropper:AddRandomLoot("livinglog", 3)
            inst.components.lootdropper:AddRandomLoot("tentaclespike", 3)
            inst.components.lootdropper:AddRandomLoot("deserthat", 2)
            inst.components.lootdropper:AddRandomLoot("malbatross_beak", 1)
            inst.components.lootdropper:AddRandomLoot("lantern", 2)
            inst.components.lootdropper:AddRandomLoot("featherfan", 1)
            inst.components.lootdropper:AddRandomLoot("thulecite", 3)
            inst.components.lootdropper:AddRandomLoot("turf_dragonfly", 3)
            inst.components.lootdropper:AddRandomLoot("greengem", 1)
            inst.components.lootdropper:AddRandomLoot("yellowgem", 1)
            inst.components.lootdropper:AddRandomLoot("orangegem", 1)
            inst.components.lootdropper:AddRandomLoot("moonglass", 3)
            inst.components.lootdropper:AddRandomLoot("chesspiece_minotaur_moonglass", 3)
            inst.components.lootdropper:AddRandomLoot("premiumwateringcan", 1)
            inst.components.lootdropper:AddRandomLoot("cane", 1)
            inst.components.lootdropper:AddRandomLoot("staff_tornado", 1)
            inst.components.lootdropper:AddRandomLoot("bundlewrap", 1)
            inst.components.lootdropper:AddRandomLoot("steelwool", 2)
            inst.components.lootdropper:AddRandomLoot("honeycomb", 3)
            inst.components.lootdropper:AddRandomLoot("spidereggsack", 3)
            inst.components.lootdropper:AddRandomLoot("heatrock", 3)
            inst.components.lootdropper:AddRandomLoot("bugnet", 3)
            inst.components.lootdropper:AddRandomLoot("birdtrap", 3)
            inst.components.lootdropper:AddRandomLoot("sewing_kit", 3)
            inst.components.lootdropper:AddRandomLoot("icehat", 3)
            inst.components.lootdropper:AddRandomLoot("trap_teeth", 3)
            inst.components.lootdropper:AddRandomLoot("trinket_1", 3)
            inst.components.lootdropper:AddRandomLoot("trinket_5", 3)
    
            inst.components.lootdropper:AddRandomLoot("ruins_bat", 0.8)
            inst.components.lootdropper:AddRandomLoot("nightsword", 1)
            inst.components.lootdropper:AddRandomLoot("glasscutter", 0.8)
            inst.components.lootdropper:AddRandomLoot("ruinshat", 0.5)
            inst.components.lootdropper:AddRandomLoot("armorruins", 0.5)
            inst.components.lootdropper:AddRandomLoot("slurtlehat", 0.3)
            inst.components.lootdropper:AddRandomLoot("armor_sanity", 1)
            inst.components.lootdropper:AddRandomLoot("armorsnurtleshell", 0.2)
            inst.components.lootdropper:AddRandomLoot("armorskeleton", 0.1)
            inst.components.lootdropper:AddRandomLoot("krampus_sack", 0.1)
            inst.components.lootdropper:AddRandomLoot("orangestaff", 0.4)
            inst.components.lootdropper:AddRandomLoot("yellowstaff", 0.4)
            inst.components.lootdropper:AddRandomLoot("greenstaff", 0.4)
            inst.components.lootdropper:AddRandomLoot("opalstaff", 0.1)
            inst.components.lootdropper:AddRandomLoot("orangeamulet", 0.5)
            inst.components.lootdropper:AddRandomLoot("yellowamulet", 0.5)
            inst.components.lootdropper:AddRandomLoot("greenamulet", 0.5)
            inst.components.lootdropper:AddRandomLoot("multitool_axe_pickaxe", 0.5)
            inst.components.lootdropper:AddRandomLoot("eyeturret_item", 0.3)
            inst.components.lootdropper:AddRandomLoot("nightmare_timepiece", 1)
        end
    end)
end



