local env =env 
GLOBAL.setfenv(1, GLOBAL)
local foods = require("preparedfoods")


--烹饪食物
------------------------------------------------------------------------------
--修改肉丸子的饥饿值
foods.meatballs.hunger = 60 --保留52
foods.meatballs.health = 15
foods.meatballs.cooktime =  1.5

--炖肉汤
foods.bonestew.sanity = 0
foods.bonestew.health = 25
foods.bonestew.cooktime = 2

--果酱
foods.jammypreserves.hunger = 25
foods.jammypreserves.sanity = 10

--蔬菜杂烩
foods.ratatouille.hunger = 30
foods.ratatouille.sanity = 10

--酿茄子
foods.stuffedeggplant.health = 0
foods.stuffedeggplant.sanity = 10

--火龙果派
foods.dragonpie.hunger = 40
foods.dragonpie.perishtime = TUNING.PERISH_MED

--肉串
foods.kabobs.health = 15

--波兰水饺
foods.perogies.sanity = 10

--辣椒炖肉
foods.hotchili.hunger = 60

--花沙拉
foods.flowersalad.perishtime = TUNING.PERISH_MED

--西瓜冰
foods.watermelonicle.health = 8

--失败料理
foods.wetgoop.hunger = 20
foods.wetgoop.sanity = -15

--鳗鱼料理
foods.unagi.hunger = 55
foods.unagi.perishtime = TUNING.PERISH_PRESERVED

--舒缓茶
foods.sweettea.perishtime = TUNING.PERISH_MED

--酸橘汁腌鱼
foods.ceviche.hunger = 45

--加州卷
foods.californiaroll.hunger = 75

--素食堡
foods.leafymeatburger.perishtime = TUNING.PERISH_MED

--酿鱼头
foods.barnaclestuffedfishhead.hunger = 120
foods.barnaclestuffedfishhead.perishtime = TUNING.PERISH_MED

--海鲜大排档
foods.surfnturf.hunger = 80

--水果圣代
foods.fruitmedley.sanity = 15

--爆炒填馅辣椒
foods.pepperpopper.hunger = TUNING.CALORIES_LARGE
foods.pepperpopper.cooktime = 1.25


------------------------------------------------------------------------------
--注意填入的prefab的名称在游戏存在，不然无效，然后便是对应的组件名称和组件内属性名称（可是函数）需要和对应的名称一样，不然修改不上属性
local MeatAndVeggies = 
{
    --肉类
    --大肉
    meat = 
    {
        edible = {hungervalue = 15},
    },
    --烤熟的大肉
    cookedmeat = --prefab的名称在游戏存在，不然无效
    {
        --其下对应的组件名称 以及 组件内属性名称（可是函数）如 hungervalue=xxx 需要和对应的名称一样，不然修改不上属性
        edible = {hungervalue = TUNING.CALORIES_MEDSMALL,sanityvalue = TUNING.SANITY_TINY },
    },
    --小肉
    smallmeat = 
    {
        edible = {hungervalue = 10 },
    },
    

    --蔬菜
    --浆果
    berries =
    {
        edible = {hungervalue = 5,sanityvalue = -5 },
    },
    --烤熟浆果
    berries_cooked =
    {
        edible = {hungervalue = 10,sanityvalue = 5 ,healthvalue = 0},
    },
    --胡萝卜
    carrot =
    {
        edible = {hungervalue = 8,sanityvalue = -5 },
    },
    --多汁浆果
    berries_juicy =
    {
        edible = {hungervalue = 5},
    },

    --蘑菇
    --绿蘑菇
    green_cap =
    {
        edible = {hungervalue = 5},
    },
    --蓝蘑菇
    blue_cap =
    {
        edible = {hungervalue = 5,healthvalue = 10},
    },

    --蝴蝶翅膀
    butterflywings = 
    {
        edible = {healthvalue = 3,hungervalue = 0},
    },

    --种子
    --胡萝卜种子
    carrot_seeds =
    {
        edible = {hungervalue = 3},
    },
    --玉米种子
    corn_seeds =
    {
        edible = {hungervalue = 3},
    },
    --南瓜种子
    pumpkin_seeds =
    {
        edible = {hungervalue = 3},
    },
    --茄子种子
    eggplant_seeds =
    {
        edible = {hungervalue = 3},
    },
    --榴莲种子
    durian_seeds =
    {
        edible = {hungervalue = 3},
    },
    --石榴种子
    pomegranate_seeds =
    {
        edible = {hungervalue = 3},
    },
    --火龙果种子
    dragonfruit_seeds =
    {
        edible = {hungervalue = 3},
    },
    --西瓜种子
    watermelon_seeds =
    {
        edible = {hungervalue = 3},
    },
    --番茄种子
    tomato_seeds =
    {
        edible = {hungervalue = 3},
    },
    --土豆种子
    potato_seeds =
    {
        edible = {hungervalue = 3},
    },
    --芦笋种子
    asparagus_seeds =
    {
        edible = {hungervalue = 3},
    },
    --洋葱种子
    onion_seeds =
    {
        edible = {hungervalue = 3},
    },
    --大蒜种子
    garlic_seeds =
    {
        edible = {hungervalue = 3},
    },
    --辣椒种子
    pepper_seeds =
    {
        edible = {hungervalue = 3},
    },
}


------------------------------------------------------------------------------
for ItemPrefabs, Comps in pairs(MeatAndVeggies) do
    env.AddPrefabPostInit(ItemPrefabs, function(inst)
        if not TheWorld.ismastersim then
            return inst
        end
        for Comp, Values in pairs(Comps) do
            --print(Comp)
            if inst.components[Comp] ~=nil then
                for CompPropName, Val in pairs(Values) do
                    inst.components[Comp][CompPropName] = Val
                end
            end
        end
    end)
end

------------------------------------------------------------------------------



