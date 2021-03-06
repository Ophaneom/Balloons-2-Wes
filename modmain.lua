local require = GLOBAL.require
local Vector3 = GLOBAL.Vector3
local STRINGS = GLOBAL.STRINGS
local ACTIONS = GLOBAL.ACTIONS
local ActionHandler = GLOBAL.ActionHandler
local LANG = GetModConfigData("LINGUAGEM")

local CNFG_HEALTH = GetModConfigData("HEALTH")
local CNFG_SANITY = GetModConfigData("SANITY")
local CNFG_HUNGER = GetModConfigData("HUNGER")
local CNFG_HUNGER_RATE = GetModConfigData("HUNGER_RATE")
local CNFG_DAMAGE_MULT = GetModConfigData("DAMAGE_MULT")
local CNFG_WALK_SPEED = GetModConfigData("WALK_SPEED")
local CNFG_RUN_SPEED = GetModConfigData("RUN_SPEED")
local CNFG_HUNGER_RATE = GetModConfigData("HUNGER_RATE")
local CNFG_DELAY_EXPLOSIVE = GetModConfigData("DELAY_EXPLOSIVE")
local CNFG_DELAY_PIG = GetModConfigData("DELAY_PIG")
local CNFG_DELAY_SPIDER = GetModConfigData("DELAY_SPIDER")
local CNFG_DELAY_BEEFALO = GetModConfigData("DELAY_BEEFALO")
local CNFG_PIGKING_DURATION = GetModConfigData("PIGKING_DURATION")
local CNFG_PIGMAN_DURATION = GetModConfigData("PIGMAN_DURATION")
local CNFG_SPIDERDEN_QNT = GetModConfigData("SPIDERDEN_QNT")
local CNFG_SPIDERDEN_RANGE = GetModConfigData("SPIDERDEN_RANGE")
local CNFG_BEEFALO_QNT = GetModConfigData("BEEFALO_QNT")
local CNFG_BEEFALO_RANGE = GetModConfigData("BEEFALO_RANGE")
local CNFG_PIGMAN_QNT = GetModConfigData("PIGMAN_QNT")
local CNFG_PIGMAN_RANGE = GetModConfigData("PIGMAN_RANGE")
local CNFG_PIGMAN_HEALTH = GetModConfigData("PIGMAN_HEALTH")
local CNFG_PIGMAN_DAMAGE = GetModConfigData("PIGMAN_DAMAGE")
local CNFG_PIGMAN_ATTACKSPEED = GetModConfigData("PIGMAN_ATTACKSPEED")
local CNFG_PIGMAN_RUNSPEED = GetModConfigData("PIGMAN_RUNSPEED")
local CNFG_PIGMAN_WALKSPEED = GetModConfigData("PIGMAN_WALKSPEED")

-----------------------------------------------------------------------------------

TUNING.BTWS_LANG = LANG
TUNING.BTWS_WES_HEALTH = CNFG_HEALTH + 0
TUNING.BTWS_WES_HUNGER = CNFG_HUNGER + 0
TUNING.BTWS_WES_HUNGER_RATE = CNFG_HUNGER_RATE + 0
TUNING.BTWS_WES_SANITY = CNFG_SANITY + 0
TUNING.BTWS_WES_DAMAGE_MULT = CNFG_DAMAGE_MULT + 0
TUNING.BTWS_WES_WALK_SPEED = CNFG_WALK_SPEED + 0
TUNING.BTWS_WES_RUN_SPEED = CNFG_RUN_SPEED + 0
TUNING.BTWS_DELAY_EXPLOSIVE_BALLOON = CNFG_DELAY_EXPLOSIVE + 0
TUNING.BTWS_DELAY_PIG_BALLOON = CNFG_DELAY_PIG + 0
TUNING.BTWS_DELAY_SPIDER_BALLOON = CNFG_DELAY_SPIDER + 0
TUNING.BTWS_DELAY_BEEFALO_BALLOON = CNFG_DELAY_BEEFALO + 0
TUNING.BTWS_PIGKING_DURATION = CNFG_PIGKING_DURATION + 0
TUNING.BTWS_PIGMAN_DURATION = CNFG_PIGMAN_DURATION + 0
TUNING.BTWS_SPIDERDEN_QNT = CNFG_SPIDERDEN_QNT + 0
TUNING.BTWS_SPIDERDEN_RANGE = CNFG_SPIDERDEN_RANGE + 0
TUNING.BTWS_BEEFALO_QNT = CNFG_BEEFALO_QNT + 0
TUNING.BTWS_BEEFALO_RANGE = CNFG_BEEFALO_RANGE + 0
TUNING.BTWS_PIGMAN_QNT = CNFG_PIGMAN_QNT + 0
TUNING.BTWS_PIGMAN_RANGE = CNFG_PIGMAN_RANGE + 0
TUNING.BTWS_PIGMAN_HEALTH = CNFG_PIGMAN_HEALTH + 0
TUNING.BTWS_PIGMAN_DAMAGE = CNFG_PIGMAN_DAMAGE + 0
TUNING.BTWS_PIGMAN_ATTACKSPEED = CNFG_PIGMAN_ATTACKSPEED + 0
TUNING.BTWS_PIGMAN_RUNSPEED = CNFG_PIGMAN_RUNSPEED + 0
TUNING.BTWS_PIGMAN_WALKSPEED = CNFG_PIGMAN_WALKSPEED + 0
local tablang = ""

--wtf
TUNING.WES_HEALTH = CNFG_HEALTH + 0
TUNING.WES_HUNGER = CNFG_HUNGER + 0
TUNING.WES_SANITY = CNFG_SANITY + 0

Assets = {
    Asset("ATLAS", "images/hud/balloomancytab_icon.xml"),
    Asset("IMAGE", "images/hud/balloomancytab_icon.tex"),
    Asset("ATLAS", "images/inventoryimages/balloonsopile.xml"),
    Asset("IMAGE", "images/inventoryimages/balloonsopile.tex"),
    Asset("ATLAS", "images/inventoryimages/explosiveballoon_icon.xml"),
    Asset("IMAGE", "images/inventoryimages/explosiveballoon_icon.tex"),
    Asset("ATLAS", "images/inventoryimages/spiderballoon_icon.xml"),
    Asset("IMAGE", "images/inventoryimages/spiderballoon_icon.tex"),
    Asset("ATLAS", "images/inventoryimages/pigmanballoon_icon.xml"),
    Asset("IMAGE", "images/inventoryimages/pigmanballoon_icon.tex"),
    Asset("ATLAS", "images/inventoryimages/beefaloballoon_icon.xml"),
    Asset("IMAGE", "images/inventoryimages/beefaloballoon_icon.tex"),
}

PrefabFiles = {
    "balloons_empty_explosive",
    "balloons_empty_pig",
    "balloons_empty_spider",
    "balloons_empty_beefalo",
    "balloon_pig",
    "balloon_spider",
    "balloon_beefalo",
    "pigking_wes",
    "pigman_wes",
}



-----------------------------------------------------------------------------------

if TUNING.BTWS_LANG == "BR" then
    STRINGS.CHARACTER_TITLES.wes = "O Silencioso Criador de Balões"
    STRINGS.CHARACTER_DESCRIPTIONS.wes = "*Não consegue falar \n*Pratica balãomancia \n*Agora está melhor"
    STRINGS.CHARACTER_SURVIVABILITY.wes = "Mínima"

    GLOBAL.STRINGS.NAMES.BALLOONS_EMPTY = "Pilha de Baloes"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOONS_EMPTY = "Apenas... baloes."
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOONS_EMPTY = "Baloes vazios?"
    
    GLOBAL.STRINGS.NAMES.BALLOONS_EMPTY_EXPLOSIVE = "Balao Explosivo"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOONS_EMPTY_EXPLOSIVE = "Cria uma pequena explosao"
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOONS_EMPTY_EXPLOSIVE = "Isso ai vai explodir!"
    GLOBAL.STRINGS.NAMES.BALLOONS_EMPTY_PIG = "Balao de Porco"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOONS_EMPTY_PIG = "Um rei porco temporário e seus súditos!"
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOONS_EMPTY_PIG = "Saúdam o rei!"
    GLOBAL.STRINGS.NAMES.BALLOONS_EMPTY_SPIDER = "Balao de Aranha"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOONS_EMPTY_SPIDER = "Vários casulos pra você."
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOONS_EMPTY_SPIDER = "Eca, aranha!"
    GLOBAL.STRINGS.NAMES.BALLOONS_EMPTY_BEEFALO = "Balao de Beefalo"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOONS_EMPTY_BEEFALO = "Da pra você uma pequena criaturinha."
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOONS_EMPTY_BEEFALO = "Pequena e sem pelos."
    
    GLOBAL.STRINGS.NAMES.BALLOON = "Balao Explosivo"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOON = "Cria uma pequena explosao"
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOON = "Vai explodir!"
    GLOBAL.STRINGS.NAMES.BALLOON_PIG = "Balao de Porco"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOON_PIG = "Empty"
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOON_PIG = "Vai explodir!"
    GLOBAL.STRINGS.NAMES.BALLOON_SPIDER = "Balao de Aranha"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOON_SPIDER = "Invoca um pequeno exercito"
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOON_SPIDER = "Vai explodir!"
    GLOBAL.STRINGS.NAMES.BALLOON_BEEFALO = "Balao de Beefalo"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOON_BEEFALO = "Da pra voce um amiguinho"
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOON_BEEFALO = "Vai explodir!"

    GLOBAL.STRINGS.NAMES.PIGKING_WES = "Rei Porco"

    tablang = "Balãomancia"
else
    STRINGS.CHARACTER_TITLES.wes = "The Silent Balloon Maker"
    STRINGS.CHARACTER_DESCRIPTIONS.wes = "*Can't talk \n*Practices balloonomancy \n*Are now better"
    STRINGS.CHARACTER_SURVIVABILITY.wes = "Slim"

    GLOBAL.STRINGS.NAMES.BALLOONS_EMPTY = "Pile of Balloons"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOONS_EMPTY = "Just... balloons."
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOONS_EMPTY = "Empty balloons?"
    
    GLOBAL.STRINGS.NAMES.BALLOONS_EMPTY_EXPLOSIVE = "Explosive Balloon"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOONS_EMPTY_EXPLOSIVE = "Makes a little explosion"
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOONS_EMPTY_EXPLOSIVE = "This will explode!"
    GLOBAL.STRINGS.NAMES.BALLOONS_EMPTY_PIG = "Pig Balloon"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOONS_EMPTY_PIG = "A temporary Pig King and his followers!"
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOONS_EMPTY_PIG = "Hail the King!"
    GLOBAL.STRINGS.NAMES.BALLOONS_EMPTY_SPIDER = "Spider Balloon"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOONS_EMPTY_SPIDER = "Several cocoons for you."
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOONS_EMPTY_SPIDER = "Eww, spider!"
    GLOBAL.STRINGS.NAMES.BALLOONS_EMPTY_BEEFALO = "Beefalo Balloon"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOONS_EMPTY_BEEFALO = "Give you a little creature."
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOONS_EMPTY_BEEFALO = "Small and hairless."
    
    GLOBAL.STRINGS.NAMES.BALLOON = "Explosive Balloon"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOON = "Makes a little explosion"
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOON = "It will explode!"
    GLOBAL.STRINGS.NAMES.BALLOON_PIG = "Pig Balloon"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOON_PIG = "A temporary Pig King!"
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOON_PIG = "It will explode!"
    GLOBAL.STRINGS.NAMES.BALLOON_SPIDER = "Spider Balloon"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOON_SPIDER = "Several cocoons for you."
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOON_SPIDER = "It will explode!"
    GLOBAL.STRINGS.NAMES.BALLOON_BEEFALO = "Beefalo Balloon"
    GLOBAL.STRINGS.RECIPE_DESC.BALLOON_BEEFALO = "Give you a little creature."
    GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BALLOON_BEEFALO = "It will explode!"

    GLOBAL.STRINGS.NAMES.PIGKING_WES = "Pig King"

    tablang = "Balloonomancy"
end

-----------------------------------------------------------------------------------

local balloonmancy = AddRecipeTab(
    tablang,
    12.22222,
    "images/hud/balloomancytab_icon.xml", 
    "balloomancytab_icon.tex", 
    "mime"
)

-----------------------------------------------------------------------------------

AddRecipe("balloons_empty", 
    {
    GLOBAL.Ingredient("petals", 12),
    GLOBAL.Ingredient("rope", 1),
    },
    balloonmancy,
    GLOBAL.TECH.NONE,
    nil,
    nil,
    nil,
    1,
    "mime",
    "images/inventoryimages/balloonsopile.xml",
    "balloonsopile.tex"
)
AddRecipe("balloons_empty_explosive", 
    {
    GLOBAL.Ingredient("balloons_empty", 1),
    GLOBAL.Ingredient("torch", 1),
    GLOBAL.Ingredient("nitre", 5),
    },
    balloonmancy,
    GLOBAL.TECH.NONE,
    nil,
    nil,
    nil,
    1,
    "mime",
    "images/inventoryimages/explosiveballoon_icon.xml",
    "explosiveballoon_icon.tex"
)
AddRecipe("balloons_empty_spider", 
    {
    GLOBAL.Ingredient("balloons_empty", 1),
    GLOBAL.Ingredient("silk", 15),
    GLOBAL.Ingredient("spidergland", 10),
    },
    balloonmancy,
    GLOBAL.TECH.NONE,
    nil,
    nil,
    nil,
    1,
    "mime",
    "images/inventoryimages/spiderballoon_icon.xml",
    "spiderballoon_icon.tex"
)
AddRecipe("balloons_empty_pig", 
    {
    GLOBAL.Ingredient("balloons_empty", 1),
    GLOBAL.Ingredient("pigskin", 8),
    GLOBAL.Ingredient("goldnugget", 10),
    },
    balloonmancy,
    GLOBAL.TECH.NONE,
    nil,
    nil,
    nil,
    1,
    "mime",
    "images/inventoryimages/pigmanballoon_icon.xml",
    "pigmanballoon_icon.tex"
)
AddRecipe("balloons_empty_beefalo", 
    {
    GLOBAL.Ingredient("balloons_empty", 1),
    GLOBAL.Ingredient("beefalowool", 10),
    },
    balloonmancy,
    GLOBAL.TECH.NONE,
    nil,
    nil,
    nil,
    1,
    "mime",
    "images/inventoryimages/beefaloballoon_icon.xml",
    "beefaloballoon_icon.tex"
)

AddAction("CRIARBALAO", "Use", function(act)
	local target = act.target or act.invobject
	if target ~= nil and target.components.criarbalao ~= nil then
		target.components.criarbalao:Criar()
	end
	return true
end)
AddComponentAction("INVENTORY", "criarbalao", function(inst, doer, actions, right)
	table.insert(actions, ACTIONS.CRIARBALAO)
end)
AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.CRIARBALAO, "doshortaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.CRIARBALAO, "doshortaction"))