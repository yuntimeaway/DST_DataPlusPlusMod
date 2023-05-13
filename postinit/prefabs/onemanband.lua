local env = env
GLOBAL.setfenv(1, GLOBAL)

local banddt = 1
local FOLLOWER_ONEOF_TAGS = {"pig", "merm", "farm_plant"}
local FOLLOWER_CANT_TAGS = {"werepig", "player"}
local HAUNTEDFOLLOWER_MUST_TAGS = {"pig"}

local function CalcDapperness(inst, owner)
    local numfollowers = owner.components.leader ~= nil and owner.components.leader:CountFollowers() or 0
    local numpets = owner.components.petleash ~= nil and owner.components.petleash:GetNumPets() or 0
    return -TUNING.DAPPERNESS_SMALL - math.max(0, numfollowers - numpets) * TUNING.SANITYAURA_SMALL/2
end

local function band_update_new(inst)
    local owner = inst.components.inventoryitem and inst.components.inventoryitem.owner

    if owner and owner.components.leader then
        local x,y,z = owner.Transform:GetWorldPosition()
        local ents = TheSim:FindEntities(x,y,z, TUNING.ONEMANBAND_RANGE, nil, FOLLOWER_CANT_TAGS, FOLLOWER_ONEOF_TAGS)
        for k,v in pairs(ents) do
            if v.components.follower and not v.components.follower.leader and not owner.components.leader:IsFollower(v) and owner.components.leader.numfollowers < 10 then
                if v:HasTag("merm") then
                    if v:HasTag("mermguard") then
                        if owner:HasTag("merm") and not owner:HasTag("mermdisguise") then
                            owner.components.leader:AddFollower(v)
                        end
                    else
                        if owner:HasTag("merm") or (TheWorld.components.mermkingmanager and TheWorld.components.mermkingmanager:HasKing()) then
                            owner.components.leader:AddFollower(v)
                        end
                    end
                else
                    owner.components.leader:AddFollower(v)
                end
			elseif v.components.farmplanttendable ~= nil then
				v.components.farmplanttendable:TendTo(owner)
			end
        end

        for k,v in pairs(owner.components.leader.followers) do
            if k.components.follower then
                if k:HasTag("pig") then
                    k.components.follower:AddLoyaltyTime(6)

                elseif k:HasTag("merm") then
                    if k:HasTag("mermguard") then
                        if owner:HasTag("merm") and not owner:HasTag("mermdisguise") then
                            k.components.follower:AddLoyaltyTime(6)
                        end
                    else
                        if owner:HasTag("merm") or (TheWorld.components.mermkingmanager and TheWorld.components.mermkingmanager:HasKing()) then
                            k.components.follower:AddLoyaltyTime(6)
                        end
                    end
                end
            end
        end
    else -- This is for haunted one man band
        local x,y,z = inst.Transform:GetWorldPosition()
        local ents = TheSim:FindEntities(x,y,z, TUNING.ONEMANBAND_RANGE, HAUNTEDFOLLOWER_MUST_TAGS, FOLLOWER_CANT_TAGS)
        for k,v in pairs(ents) do
            if v.components.follower and not v.components.follower.leader  and not inst.components.leader:IsFollower(v) and inst.components.leader.numfollowers < 10 then
                inst.components.leader:AddFollower(v)
                --owner.components.sanity:DoDelta(-TUNING.SANITY_MED)
            end
        end

        for k,v in pairs(inst.components.leader.followers) do
            if k:HasTag("pig") and k.components.follower then
                k.components.follower:AddLoyaltyTime(6)
            end
        end
    end
end

local function band_enable_new(inst)
    inst.updatetask = inst:DoPeriodicTask(banddt, band_update_new, 1)
end

local function onequip_new(inst, owner)
    if owner then
        owner.AnimState:OverrideSymbol("swap_body_tall", "armor_onemanband", "swap_body_tall")
        inst.components.fueled:StartConsuming()
    end

    band_enable_new(inst)
end


env.AddPrefabPostInit("onemanband",function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.equippable~=nil then
        inst.components.equippable.dapperness = CalcDapperness
        inst.components.equippable:SetOnEquip(onequip_new)
    end

end)



