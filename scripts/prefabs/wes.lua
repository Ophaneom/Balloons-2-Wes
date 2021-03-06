local MakePlayerCharacter = require("prefabs/player_common")

local assets =
{
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
    Asset("ANIM", "anim/player_mount_wes.zip"),
    Asset("ANIM", "anim/player_mime.zip"),
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.WES
end

local prefabs = FlattenTree(start_inv, true)

local function common_postinit(inst)
    inst:AddTag("mime")
    inst:AddTag("balloonomancer")

    if TheNet:GetServerGameMode() == "quagmire" then
        inst:AddTag("quagmire_cheapskate")
    end
end

local function master_postinit(inst)
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

    inst.components.health:SetMaxHealth(TUNING.BTWS_WES_HEALTH)
    inst.components.hunger:SetMax(TUNING.BTWS_WES_HUNGER)
    inst.components.hunger:SetRate(TUNING.WILSON_HUNGER_RATE * TUNING.BTWS_WES_HUNGER_RATE)
    inst.components.sanity:SetMax(TUNING.BTWS_WES_SANITY)
    --inst.components.locomotor:SetExternalSpeedMultiplier(inst, "Acceleration", TUNING.BTWS_WES_SPEED)
    inst.components.locomotor.walkspeed = TUNING.BTWS_WES_WALK_SPEED
    inst.components.locomotor.runspeed = TUNING.BTWS_WES_RUN_SPEED

    inst.components.foodaffinity:AddPrefabAffinity("freshfruitcrepes", TUNING.AFFINITY_15_CALORIES_SUPERHUGE)

    if TheNet:GetServerGameMode() == "lavaarena" then
        event_server_data("lavaarena", "prefabs/wes").master_postinit(inst)
    else
        inst.components.combat.damagemultiplier = TUNING.BTWS_WES_DAMAGE_MULT
    end
end

return MakePlayerCharacter("wes", prefabs, assets, common_postinit, master_postinit, prefabs)
