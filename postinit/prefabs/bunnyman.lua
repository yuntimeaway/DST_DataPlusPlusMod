local env = env
GLOBAL.setfenv(1, GLOBAL)


local function IsForcedNightmare(inst)
	return inst.components.timer:TimerExists("forcenightmare")
end

local function IsCrazyGuy(guy)
    local sanity = guy ~= nil and guy.replica.sanity or nil
    return sanity ~= nil and sanity:IsInsanityMode() and sanity:GetPercentNetworked() <= (guy:HasTag("dappereffects") and TUNING.DAPPER_BEARDLING_SANITY or TUNING.BEARDLING_SANITY)
end

local function LootSetupFunction(lootdropper)
    local guy = lootdropper.inst.causeofdeath
	if IsForcedNightmare(lootdropper.inst) then
		-- forced beard lord
        lootdropper:AddChanceLoot("nightmarefuel", 1)
        lootdropper:AddChanceLoot("beardhair", 1)
        lootdropper:AddChanceLoot("beardhair", 1)
        lootdropper:AddChanceLoot("monstermeat", 1)
	elseif IsCrazyGuy(guy ~= nil and guy.components.follower ~= nil and guy.components.follower.leader or guy) then
        -- beard lord
        lootdropper:AddChanceLoot("beardhair", 1)
        lootdropper:AddChanceLoot("beardhair", 1)
        lootdropper:AddChanceLoot("monstermeat", 1)
    else
        -- regular loot
        lootdropper:AddChanceLoot("meat", 1)
        lootdropper:AddChanceLoot("manrabbit_tail", 1)
    end
end

env.AddPrefabPostInit("bunnyman", function(inst)
    if not TheWorld.ismastersim then
        return 
    end

    if inst.components.lootdropper ~= nil then
        inst.components.lootdropper:SetLootSetupFn(LootSetupFunction)

        inst.components.lootdropper.numrandomloot = 1
        inst.components.lootdropper:AddRandomLoot("meat", 5)
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
        inst.components.lootdropper:AddRandomLoot("green_cap", 5)
        inst.components.lootdropper:AddRandomLoot("red_cap", 5)
        inst.components.lootdropper:AddRandomLoot("blue_cap", 5)
        inst.components.lootdropper:AddRandomLoot("seeds", 5)
        inst.components.lootdropper:AddRandomLoot("gears", 5)
        inst.components.lootdropper:AddRandomLoot("houndstooth", 5)
        inst.components.lootdropper:AddRandomLoot("hammer", 5)
        inst.components.lootdropper:AddRandomLoot("shovel", 5)
        inst.components.lootdropper:AddRandomLoot("pinecone", 5)
        inst.components.lootdropper:AddRandomLoot("acorn", 5)
        inst.components.lootdropper:AddRandomLoot("twiggy_nut", 5)

        inst.components.lootdropper:AddRandomLoot("", 180)

        inst.components.lootdropper:AddRandomLoot("shovel", 5)
        inst.components.lootdropper:AddRandomLoot("axe", 5)
        inst.components.lootdropper:AddRandomLoot("pickaxe", 5)
        inst.components.lootdropper:AddRandomLoot("blowdart_pipe", 5)
        inst.components.lootdropper:AddRandomLoot("beefalowool", 5)
        inst.components.lootdropper:AddRandomLoot("beardhair", 5)
        inst.components.lootdropper:AddRandomLoot("saltrock", 5)
        inst.components.lootdropper:AddRandomLoot("feather_crow", 5)
        inst.components.lootdropper:AddRandomLoot("grass_umbrella", 5)
        inst.components.lootdropper:AddRandomLoot("trap", 5)
        inst.components.lootdropper:AddRandomLoot("boatpatch", 5)
        inst.components.lootdropper:AddRandomLoot("flowerhat", 5)
        inst.components.lootdropper:AddRandomLoot("kelphat", 5)
        inst.components.lootdropper:AddRandomLoot("strawhat", 5)
        inst.components.lootdropper:AddRandomLoot("purplegem", 3)
        inst.components.lootdropper:AddRandomLoot("redgem", 3)
        inst.components.lootdropper:AddRandomLoot("bluegem", 3)
        inst.components.lootdropper:AddRandomLoot("marble", 5)
        inst.components.lootdropper:AddRandomLoot("kabobs", 5)
        inst.components.lootdropper:AddRandomLoot("minifan", 5)
        inst.components.lootdropper:AddRandomLoot("cutreeds", 5)
        inst.components.lootdropper:AddRandomLoot("papyrus", 5)
        inst.components.lootdropper:AddRandomLoot("smallmeat", 5)
        inst.components.lootdropper:AddRandomLoot("honey", 5)
        inst.components.lootdropper:AddRandomLoot("healingsalve", 5)
        inst.components.lootdropper:AddRandomLoot("pondfish", 5)


        inst.components.lootdropper:AddRandomLoot("nightmarefuel", 2.5)
        inst.components.lootdropper:AddRandomLoot("livinglog", 2.5)
        inst.components.lootdropper:AddRandomLoot("tentaclespike", 2.5)
        inst.components.lootdropper:AddRandomLoot("lantern", 2.5)
        inst.components.lootdropper:AddRandomLoot("thulecite", 3)
        inst.components.lootdropper:AddRandomLoot("greengem", 1)
        inst.components.lootdropper:AddRandomLoot("orangegem", 1)
        inst.components.lootdropper:AddRandomLoot("yellowgem", 1)
        inst.components.lootdropper:AddRandomLoot("cane", 2)
        inst.components.lootdropper:AddRandomLoot("staff_tornado", 1)
        inst.components.lootdropper:AddRandomLoot("bundlewrap", 2.5)
        inst.components.lootdropper:AddRandomLoot("steelwool", 2.5)
        inst.components.lootdropper:AddRandomLoot("honeycomb", 3)
        inst.components.lootdropper:AddRandomLoot("spidereggsack", 3)
        inst.components.lootdropper:AddRandomLoot("heatrock", 2.5)
        inst.components.lootdropper:AddRandomLoot("bugnet", 2)
        inst.components.lootdropper:AddRandomLoot("birdtrap", 2)
        inst.components.lootdropper:AddRandomLoot("sewing_kit", 2)
        inst.components.lootdropper:AddRandomLoot("bushhat", 1.5)
        inst.components.lootdropper:AddRandomLoot("icehat", 2)
        inst.components.lootdropper:AddRandomLoot("rainhat", 2)
        inst.components.lootdropper:AddRandomLoot("deerclops_eyeball", 1.5)
        inst.components.lootdropper:AddRandomLoot("tallbirdegg", 3)
        inst.components.lootdropper:AddRandomLoot("trap_teeth", 3)
        inst.components.lootdropper:AddRandomLoot("trinket_11", 3)
        inst.components.lootdropper:AddRandomLoot("trinket_17", 3)
        inst.components.lootdropper:AddRandomLoot("trunk_summer", 2)
        inst.components.lootdropper:AddRandomLoot("trunk_winter", 1.5)
        inst.components.lootdropper:AddRandomLoot("goldenaxe", 2)
        inst.components.lootdropper:AddRandomLoot("goldenpickaxe", 2)
        inst.components.lootdropper:AddRandomLoot("goldenshovel", 2)


        inst.components.lootdropper:AddRandomLoot("ruinshat", 0.5)
        inst.components.lootdropper:AddRandomLoot("armorruins", 0.5)
        inst.components.lootdropper:AddRandomLoot("slurtlehat", 0.3)
        inst.components.lootdropper:AddRandomLoot("hivehat", 0.2)
        inst.components.lootdropper:AddRandomLoot("skeletonhat", 0.2)
        inst.components.lootdropper:AddRandomLoot("armorslurper", 0.2)
        inst.components.lootdropper:AddRandomLoot("armor_sanity", 1)
        inst.components.lootdropper:AddRandomLoot("armorsnurtleshell", 0.2)
        inst.components.lootdropper:AddRandomLoot("armordragonfly", 1)
        inst.components.lootdropper:AddRandomLoot("krampus_sack", 0.1)
        inst.components.lootdropper:AddRandomLoot("orangestaff", 0.3)
        inst.components.lootdropper:AddRandomLoot("greenstaff", 0.1)
        inst.components.lootdropper:AddRandomLoot("orangeamulet", 0.2)
        inst.components.lootdropper:AddRandomLoot("yellowamulet", 0.2)
        inst.components.lootdropper:AddRandomLoot("greenamulet", 0.1)
        inst.components.lootdropper:AddRandomLoot("dragon_scales", 1)
        inst.components.lootdropper:AddRandomLoot("shroom_skin", 0.1)
        inst.components.lootdropper:AddRandomLoot("multitool_axe_pickaxe", 0.4)
        inst.components.lootdropper:AddRandomLoot("rock_avocado_fruit_sprout", 1)
        inst.components.lootdropper:AddRandomLoot("eyeturret_item", 0.3)
        inst.components.lootdropper:AddRandomLoot("nightmare_timepiece", 1)
        inst.components.lootdropper:AddRandomLoot("panflute", 0.5)
        inst.components.lootdropper:AddRandomLoot("deserthat", 0.5)
        inst.components.lootdropper:AddRandomLoot("walrushat", 0.2)
        inst.components.lootdropper:AddRandomLoot("eyebrellahat", 0.5)
        inst.components.lootdropper:AddRandomLoot("malbatross_beak", 0.3)
    end

end)






