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


------------------------------------------------------------------------------
--注意填入的prefab的名称在游戏存在，不然无效，然后便是对应的组件名称和组件内属性名称（可是函数）需要和对应的名称一样，不然修改不上属性
local MeatAndVeggies = 
{
    --肉类
    --烤熟的大肉
    cookedmeat = --prefab的名称在游戏存在，不然无效
    {
        --其下对应的组件名称 以及 组件内属性名称（可是函数）如 hungervalue=xxx 需要和对应的名称一样，不然修改不上属性
        edible = {hungervalue = TUNING.CALORIES_MEDSMALL,sanityvalue = TUNING.SANITY_TINY },
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

    butterflywings = 
    {
        edible = {healthvalue = 3,hungervalue = 0},
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
