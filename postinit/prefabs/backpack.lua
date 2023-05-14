local env = env
GLOBAL.setfenv(1, GLOBAL)
local containers = require("containers")

--普通背包
containers.params.backpack.widget.slotpos={}

for y = 0, 5 do
    table.insert(containers.params.backpack.widget.slotpos, Vector3(-162,      -75 * y + 166, 0))
    table.insert(containers.params.backpack.widget.slotpos, Vector3(-162 + 75, -75 * y + 166, 0))
end
containers.params.backpack.widget.animbank = "ui_piggyback_2x6"
containers.params.backpack.widget.animbuild = "ui_piggyback_2x6"
containers.params.backpack.widget.pos = Vector3(-5, -80, 0)

--小猪背包
containers.params.piggyback.widget.slotpos={}
for y = 0, 7 do
    table.insert(containers.params.piggyback.widget.slotpos, Vector3(-162,      -75 * y + 240, 0))
    table.insert(containers.params.piggyback.widget.slotpos, Vector3(-162 + 75, -75 * y + 240, 0))
end
containers.params.piggyback.widget.animbank = "ui_krampusbag_2x8"
containers.params.piggyback.widget.animbuild = "ui_krampusbag_2x8"
containers.params.backpack.widget.pos = Vector3(-5, -130, 0)

--保鲜背包
containers.params.icepack.widget.slotpos={}
for y = 0, 5 do
    table.insert(containers.params.icepack.widget.slotpos, Vector3(-162,      -75 * y + 166, 0))
    table.insert(containers.params.icepack.widget.slotpos, Vector3(-162 + 75, -75 * y + 166, 0))
end

containers.params.icepack.widget.animbank = "ui_piggyback_2x6"
containers.params.icepack.widget.animbuild = "ui_piggyback_2x6"
containers.params.icepack.widget.pos = Vector3(-5, -80, 0)

--饥饿腰带
containers.params.armorslurper =
{
    widget =
    {
        slotpos = {},
        animbank = "ui_icepack_2x3",
        animbuild = "ui_icepack_2x3",
        pos = Vector3(-5, -70, 0),
    },
    issidewidget = true,
    type = "pack",
    openlimit = 1,
}

for y = 0, 2 do
    table.insert(containers.params.armorslurper.widget.slotpos, Vector3(-162, -75 * y + 75, 0))
    table.insert(containers.params.armorslurper.widget.slotpos, Vector3(-162 + 75, -75 * y + 75, 0))
end

--高礼帽
containers.params.tophat =
{
    widget =
    {
        slotpos =
        {
            Vector3(-(64 + 12)/2, 0, 0),
            Vector3( (64 + 12)/2, 0, 0),
        },
        animbank = "ui_beard_2x1",
        animbuild = "ui_beard_2x1",
        pos = Vector3(-82, 89, 0),
    },
    type = "head",
    issidewidget = true,
    openlimit = 1,
}


--雨衣
containers.params.raincoat =
{
    widget =
    {
        slotpos = {},
        animbank = "ui_icepack_2x3",
        animbuild = "ui_icepack_2x3",
        pos = Vector3(-5, -70, 0),
    },
    issidewidget = true,
    type = "pack",
    openlimit = 1,
}

for y = 0, 2 do
    table.insert(containers.params.raincoat.widget.slotpos, Vector3(-162, -75 * y + 75, 0))
    table.insert(containers.params.raincoat.widget.slotpos, Vector3(-162 + 75, -75 * y + 75, 0))
end

--犬牙背心
containers.params.sweatervest =
{
    widget =
    {
        slotpos = {},
        animbank = "ui_backpack_2x4",
        animbuild = "ui_backpack_2x4",
        --pos = Vector3(-5, -70, 0),
        pos = Vector3(-5, -80, 0),        
    },
    issidewidget = true,
    type = "pack",
    openlimit = 1,
}

for y = 0, 3 do
    table.insert(containers.params.sweatervest.widget.slotpos, Vector3(-162, -75 * y + 114, 0))
    table.insert(containers.params.sweatervest.widget.slotpos, Vector3(-162 + 75, -75 * y + 114, 0))
end


--松软和透气背心
containers.params.trunkvest_summer =
{
    widget =
    {
        slotpos = {},
        animbank = "ui_icepack_2x3",
        animbuild = "ui_icepack_2x3",
        pos = Vector3(-5, -70, 0),
    },
    issidewidget = true,
    type = "pack",
    openlimit = 1,
}

for y = 0, 2 do
    table.insert(containers.params.trunkvest_summer.widget.slotpos, Vector3(-162, -75 * y + 75, 0))
    table.insert(containers.params.trunkvest_summer.widget.slotpos, Vector3(-162 + 75, -75 * y + 75, 0))
end

containers.params.trunkvest_winter =
{
    widget =
    {
        slotpos = {},
        animbank = "ui_icepack_2x3",
        animbuild = "ui_icepack_2x3",
        pos = Vector3(-5, -70, 0),
    },
    issidewidget = true,
    type = "pack",
    openlimit = 1,
}

for y = 0, 2 do
    table.insert(containers.params.trunkvest_winter.widget.slotpos, Vector3(-162, -75 * y + 75, 0))
    table.insert(containers.params.trunkvest_winter.widget.slotpos, Vector3(-162 + 75, -75 * y + 75, 0))
end


--清凉夏装
containers.params.reflectivevest =
{
    widget =
    {
        slotpos =
        {
            Vector3(-35,                 20, 0),
            Vector3(-35 + 75,            20, 0),
            Vector3(-35,                -55, 0),
            Vector3(-35 + 75,           -55, 0),
        },
        animbank = "ui_bundle_2x2",
        animbuild = "ui_bundle_2x2",
        pos = Vector3(-100, -75, 0),
    },    
    issidewidget = true,
    type = "pack",
    openlimit = 1,
}

--花衬衫
containers.params.hawaiianshirt =
{
    widget =
    {
        slotpos = {},
        animbank = "ui_icepack_2x3",
        animbuild = "ui_icepack_2x3",
        pos = Vector3(-5, -70, 0),
    },
    issidewidget = true,
    type = "pack",
    openlimit = 1,
}

for y = 0, 2 do
    table.insert(containers.params.hawaiianshirt.widget.slotpos, Vector3(-162, -75 * y + 75, 0))
    table.insert(containers.params.hawaiianshirt.widget.slotpos, Vector3(-162 + 75, -75 * y + 75, 0))
end


--熊皮背心
containers.params.beargervest =
{
    widget =
    {
        slotpos = {},
        animbank = "ui_backpack_2x4",
        animbuild = "ui_backpack_2x4",
        --pos = Vector3(-5, -70, 0),
        pos = Vector3(-5, -80, 0),        
    },
    issidewidget = true,
    type = "pack",
    openlimit = 1,
}

for y = 0, 3 do
    table.insert(containers.params.beargervest.widget.slotpos, Vector3(-162, -75 * y + 114, 0))
    table.insert(containers.params.beargervest.widget.slotpos, Vector3(-162 + 75, -75 * y + 114, 0))
end