local env = env
GLOBAL.setfenv(1, GLOBAL)


local houndTable={"hound","icehound","firehound"}


for i,v in ipairs(houndTable) do
    env.AddPrefabPostInit(v,function(inst)
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
            inst.components.lootdropper:AddRandomLoot("cutgrass", 5)
            inst.components.lootdropper:AddRandomLoot("twigs", 5)
            inst.components.lootdropper:AddRandomLoot("thulecite_pieces", 5)
            inst.components.lootdropper:AddRandomLoot("featherpencil", 4)
            inst.components.lootdropper:AddRandomLoot("torch", 5)
            inst.components.lootdropper:AddRandomLoot("green_cap", 5)
            inst.components.lootdropper:AddRandomLoot("blue_cap", 5)
            inst.components.lootdropper:AddRandomLoot("red_cap", 5)
            inst.components.lootdropper:AddRandomLoot("seeds", 5)
            inst.components.lootdropper:AddRandomLoot("gears", 5)
            inst.components.lootdropper:AddRandomLoot("houndstooth", 5)
            inst.components.lootdropper:AddRandomLoot("pinecone", 5)
            inst.components.lootdropper:AddRandomLoot("acorn", 5)
            inst.components.lootdropper:AddRandomLoot("twiggy_nut", 5)

            inst.components.lootdropper:AddRandomLoot("", 160)

            inst.components.lootdropper:AddRandomLoot("shovel", 5)
            inst.components.lootdropper:AddRandomLoot("axe", 5)
            inst.components.lootdropper:AddRandomLoot("pickaxe", 5)
            inst.components.lootdropper:AddRandomLoot("blowdart_pipe", 5)
            inst.components.lootdropper:AddRandomLoot("beefalowool", 5)
            inst.components.lootdropper:AddRandomLoot("beardhair", 5)
            inst.components.lootdropper:AddRandomLoot("saltrock", 5)
            inst.components.lootdropper:AddRandomLoot("feather_crow", 5)
            inst.components.lootdropper:AddRandomLoot("trap", 5)
            inst.components.lootdropper:AddRandomLoot("boatpatch", 5)
            inst.components.lootdropper:AddRandomLoot("strawhat", 5)
            inst.components.lootdropper:AddRandomLoot("purplegem", 5)
            inst.components.lootdropper:AddRandomLoot("bluegem", 5)
            inst.components.lootdropper:AddRandomLoot("redgem", 5)
            inst.components.lootdropper:AddRandomLoot("marble", 5)
            inst.components.lootdropper:AddRandomLoot("minifan", 5)
            inst.components.lootdropper:AddRandomLoot("cutreeds", 5)
            inst.components.lootdropper:AddRandomLoot("smallmeat", 5)
            inst.components.lootdropper:AddRandomLoot("honey", 5)
            inst.components.lootdropper:AddRandomLoot("healingsalve", 5)
            inst.components.lootdropper:AddRandomLoot("manrabbit_tail", 5)
            inst.components.lootdropper:AddRandomLoot("pondfish", 5)

            inst.components.lootdropper:AddRandomLoot("nightmarefuel", 2.5)
            inst.components.lootdropper:AddRandomLoot("livinglog", 2.5)
            inst.components.lootdropper:AddRandomLoot("dragonpie", 2)
            inst.components.lootdropper:AddRandomLoot("waffles", 2)
            inst.components.lootdropper:AddRandomLoot("deserthat", 2)
            inst.components.lootdropper:AddRandomLoot("trunkvest_summer", 2)
            inst.components.lootdropper:AddRandomLoot("reflectivevest", 2)
            inst.components.lootdropper:AddRandomLoot("lantern", 2)
            inst.components.lootdropper:AddRandomLoot("thulecite", 2)
            inst.components.lootdropper:AddRandomLoot("turf_dragonfly", 2)
            inst.components.lootdropper:AddRandomLoot("greengem", 1)
            inst.components.lootdropper:AddRandomLoot("orangegem", 1)
            inst.components.lootdropper:AddRandomLoot("yellowgem", 1) 
            inst.components.lootdropper:AddRandomLoot("chesspiece_claywarg", 2)
            inst.components.lootdropper:AddRandomLoot("steelwool", 2)
            inst.components.lootdropper:AddRandomLoot("honeycomb", 2)
            inst.components.lootdropper:AddRandomLoot("spidereggsack", 2)
            inst.components.lootdropper:AddRandomLoot("heatrock", 2)
            inst.components.lootdropper:AddRandomLoot("sewing_kit", 2)
            inst.components.lootdropper:AddRandomLoot("tallbirdegg", 2)
            inst.components.lootdropper:AddRandomLoot("trap_teeth", 2)
            inst.components.lootdropper:AddRandomLoot("trinket_18", 2)
            inst.components.lootdropper:AddRandomLoot("trinket_22", 2)


            inst.components.lootdropper:AddRandomLoot("ruinshat", 0.2)
            inst.components.lootdropper:AddRandomLoot("slurtlehat", 0.2)
            inst.components.lootdropper:AddRandomLoot("armor_sanity", 0.1)
            inst.components.lootdropper:AddRandomLoot("armorsnurtleshell", 0.2)
            inst.components.lootdropper:AddRandomLoot("orangeamulet", 0.1)
            inst.components.lootdropper:AddRandomLoot("yellowamulet", 0.1)
            inst.components.lootdropper:AddRandomLoot("greenamulet", 0.1)
            inst.components.lootdropper:AddRandomLoot("multitool_axe_pickaxe", 0.1)
            inst.components.lootdropper:AddRandomLoot("rock_avocado_fruit_sprout", 0.1)
            inst.components.lootdropper:AddRandomLoot("eyeturret_item", 0.1)
            inst.components.lootdropper:AddRandomLoot("nightmare_timepiece", 0.1)
            inst.components.lootdropper:AddRandomLoot("panflute", 0.1)
            inst.components.lootdropper:AddRandomLoot("cane", 0.1)
            inst.components.lootdropper:AddRandomLoot("staff_tornado", 0.1)
            inst.components.lootdropper:AddRandomLoot("bundlewrap", 0.5)
        end
    end)
end

