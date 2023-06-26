local env = env
GLOBAL.setfenv(1,GLOBAL)


env.AddPrefabPostInit("mole", function(inst)
    if not TheWorld.ismastersim then
        return 
    end

    if inst.components.lootdropper ~= nil then
        inst.components.lootdropper.numrandomloot = 1
        inst.components.lootdropper:AddRandomLoot("goldnugget", 5)
        inst.components.lootdropper:AddRandomLoot("rocks", 5)
        inst.components.lootdropper:AddRandomLoot("spidergland", 5)
        inst.components.lootdropper:AddRandomLoot("stinger", 5)
        inst.components.lootdropper:AddRandomLoot("cutstone", 5)
        inst.components.lootdropper:AddRandomLoot("spear", 5)
        inst.components.lootdropper:AddRandomLoot("hammer", 5)

        inst.components.lootdropper:AddRandomLoot("", 100)

        inst.components.lootdropper:AddRandomLoot("shovel", 5)
        inst.components.lootdropper:AddRandomLoot("axe", 5)
        inst.components.lootdropper:AddRandomLoot("pickaxe", 5)
        inst.components.lootdropper:AddRandomLoot("saltrock", 5)
        inst.components.lootdropper:AddRandomLoot("trap", 5)
        inst.components.lootdropper:AddRandomLoot("boatpatch", 5)


        inst.components.lootdropper:AddRandomLoot("nightmarefuel", 2)
        inst.components.lootdropper:AddRandomLoot("livinglog", 2)
        inst.components.lootdropper:AddRandomLoot("deserthat", 1)
        inst.components.lootdropper:AddRandomLoot("lantern", 2)
        inst.components.lootdropper:AddRandomLoot("moonglass", 3)
        inst.components.lootdropper:AddRandomLoot("steelwool", 2)
        inst.components.lootdropper:AddRandomLoot("heatrock", 2)
        inst.components.lootdropper:AddRandomLoot("bugnet", 2)
        inst.components.lootdropper:AddRandomLoot("birdtrap", 2)
        inst.components.lootdropper:AddRandomLoot("sewing_kit", 2)
        inst.components.lootdropper:AddRandomLoot("trap_teeth", 2)
        inst.components.lootdropper:AddRandomLoot("trinket_13", 2)
        inst.components.lootdropper:AddRandomLoot("thulecite_pieces", 2)
        inst.components.lootdropper:AddRandomLoot("gears", 1.5)
        inst.components.lootdropper:AddRandomLoot("houndstooth", 2)
        inst.components.lootdropper:AddRandomLoot("goldenpickaxe", 3)
        inst.components.lootdropper:AddRandomLoot("goldenshovel", 3)
        inst.components.lootdropper:AddRandomLoot("goldenaxe", 3)
        inst.components.lootdropper:AddRandomLoot("purplegem", 1.5)
        inst.components.lootdropper:AddRandomLoot("bluegem", 1.5)
        inst.components.lootdropper:AddRandomLoot("redgem", 1.5)
        inst.components.lootdropper:AddRandomLoot("marble", 2)

        inst.components.lootdropper:AddRandomLoot("opalpreciousgem", 0.1)
        inst.components.lootdropper:AddRandomLoot("multitool_axe_pickaxe", 0.3)
        inst.components.lootdropper:AddRandomLoot("rock_avocado_fruit_sprout", 1)
        inst.components.lootdropper:AddRandomLoot("nightmare_timepiece", 0.5)
        inst.components.lootdropper:AddRandomLoot("thulecite", 1)
        inst.components.lootdropper:AddRandomLoot("greengem", 0.3)
        inst.components.lootdropper:AddRandomLoot("orangegem", 0.3)
        inst.components.lootdropper:AddRandomLoot("yellowgem", 0.3)
        inst.components.lootdropper:AddRandomLoot("malbatross_beak", 0.3)
        inst.components.lootdropper:AddRandomLoot("premiumwateringcan", 0.3)
        inst.components.lootdropper:AddRandomLoot("cane", 0.75)
        inst.components.lootdropper:AddRandomLoot("staff_tornado", 0.3)
    end
end)




