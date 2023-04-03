local env = env
GLOBAL.setfenv(1, GLOBAL)
local containers = require("containers")


containers.params.backpack.widget.slotpos={}

for y = 0, 5 do
    table.insert(containers.params.backpack.widget.slotpos, Vector3(-162,      -75 * y + 166, 0))
    table.insert(containers.params.backpack.widget.slotpos, Vector3(-162 + 75, -75 * y + 166, 0))
end
containers.params.backpack.widget.animbank = "ui_piggyback_2x6"
containers.params.backpack.widget.animbuild = "ui_piggyback_2x6"
containers.params.backpack.widget.pos = Vector3(-5, -80, 0)






