local env=env
GLOBAL.setfenv(1,GLOBAL)


local ROSE_NAME = "rose"

local function onPickUpFn(inst, picker)
    local pos = inst:GetPosition()

    if picker ~= nil then
        if inst.animname == ROSE_NAME and
            picker.components.combat ~= nil and
            not (picker.components.inventory ~= nil and picker.components.inventory:EquipHasTag("bramble_resistant")) and not picker:HasTag("shadowminion") then
            picker.components.combat:GetAttacked(inst, TUNING.ROSE_DAMAGE)
            picker:PushEvent("thorns")
        end
    end

    TheWorld:PushEvent("plantkilled", { doer = picker, pos = pos }) --this event is pushed in other places too
end


env.AddPrefabPostInit("flower", function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if inst.components.pickable ~= nil then
        inst.components.pickable.onpickedfn = onPickUpFn
    end
end)



