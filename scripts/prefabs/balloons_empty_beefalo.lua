local assets =
{
    Asset("ANIM", "anim/balloons_empty.zip"),
    Asset("SOUND", "sound/pengull.fsb"),
}

local prefabs =
{
    "balloon_beefalo",
    "mosquitosack",
    "waterballoon_splash",
}

local function dodecay(inst)
    if inst.components.lootdropper == nil then
        inst:AddComponent("lootdropper")
    end
    inst.components.lootdropper:SpawnLootPrefab("mosquitosack")
    inst.components.lootdropper:SpawnLootPrefab("mosquitosack")
    SpawnPrefab("small_puff").Transform:SetPosition(inst.Transform:GetWorldPosition())
    inst:Remove()
end

local function startdecay(inst)
    if inst._decaytask == nil then
        inst._decaytask = inst:DoTaskInTime(TUNING.BALLOON_PILE_DECAY_TIME, dodecay)
        inst._decaystart = GetTime()
    end
end

local function stopdecay(inst)
    if inst._decaytask ~= nil then
        inst._decaytask:Cancel()
        inst._decaytask = nil
        inst._decaystart = nil
    end
end

local function onsave(inst, data)
    if inst._decaystart ~= nil then
        local time = GetTime() - inst._decaystart
        if time > 0 then
            data.decaytime = time
        end
    end
end    

local function onload(inst, data)
    if inst._decaytask ~= nil and data ~= nil and data.decaytime ~= nil then
        local remaining = math.max(0, TUNING.BALLOON_PILE_DECAY_TIME - data.decaytime)
        inst._decaytask:Cancel()
        inst._decaytask = inst:DoTaskInTime(remaining, dodecay)
        inst._decaystart = GetTime() + remaining - TUNING.BALLOON_PILE_DECAY_TIME
    end
end

local function onbuilt(inst, builder)
    
end

local function OnHaunt(inst)
    if inst.components.criarbalao ~= nil and math.random() <= TUNING.HAUNT_CHANCE_OFTEN then
        inst.components.criarbalao:Criar()
        return true
    end
    return false
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst:AddTag("cattoy")

    inst.AnimState:SetBank("balloons_empty")
    inst.AnimState:SetBuild("balloons_empty")
    inst.AnimState:PlayAnimation("idle")

    inst.MiniMapEntity:SetIcon("balloons_empty.png")

    MakeInventoryFloatable(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst._decaytask = nil
    inst._decaystart = nil

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "beefaloballoon_icon"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/beefaloballoon_icon.xml"
    -----------------------------------

    inst:AddComponent("inspectable")

    inst:AddComponent("criarbalao")
    inst.components.criarbalao:TrocarPrefab("_beefalo")

    inst:AddComponent("stackable")
	inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

    inst:AddComponent("hauntable")
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)
    inst.components.hauntable:SetOnHauntFn(OnHaunt)

    startdecay(inst)

    inst:ListenForEvent("onputininventory", stopdecay)
    inst:ListenForEvent("ondropped", startdecay)

    inst.OnBuiltFn = onbuilt
    inst.OnLoad = onload
    inst.OnSave = onsave

    return inst
end

return Prefab("balloons_empty_beefalo", fn, assets, prefabs)
