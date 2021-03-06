name = "Balloons 2 Wes"

description = [[
EN:
Wes character remake made by Ophaneom.
Customizable mod.

- STATUS:
* Maximum life increased from 113 to 150.
* Maximum hunger increased from 113 to 150.
* Hunger multiplier changed from 1.25x to 1x.
* Damage multiplier changed from 0.75x to 1x.
    
- BALLOONS:
* New crafting tab.
* Explosive Balloon: Damage a small area after a few seconds.
* Pig Balloon: Spawns a temporary pig king and his followers.
* Spider Balloon: Spawns 3 spider dens around the balloon.
* Beefalo balloon: Spawns 1 baby beefalo.


PT-BR:
Remake do personagem Wes feito por Ophaneom.
Mod customizável.

- STATUS:
* Vida máxima aumentada de 113 para 150.
* Fome máxima aumentada de 113 para 150.
* Multiplicador de fome alterado de 1.25x para 1x.
* Multiplicador de dano alterado de 0.75x para 1x.

- BALÕES:
* Nova aba de crafting.
* Balão Explosivo: Dá um pequeno dano em área após alguns segundos.
* Balão de Porco: Spawna um rei porco temporário e seus súditos.
* Balão de Aranha: Spawna de 3 casulos em volta do balão.
* Balão de Beefalo: Spawna de 1 bebê beefalo.
]]

author = "Ophaneom"

version = "1.0.2c"

forumthread = ""

api_version = 10

priority = -20

dont_starve_compatible = true
reign_of_giants_compatible = true
dst_compatible = true
hamlet_compatible = true

all_clients_require_mod = true
client_only_mod = false
server_only_mod = false

icon_atlas = "icone.xml"
icon = "icone.tex"

local never = {{description = "", data = false}}
local function Breaker(title, hover)
    return {
        name = title,
        hover = hover,
        options = never,
        default = false
    }
end

configuration_options =
{
	Breaker("Language Settings"),
	{
		name = "LINGUAGEM",
		label = "Language",
		options =	{
			{description = "English", data = "EN"},
            {description = "Portuguese-BR", data = "BR"},
		},

		default = "EN",
	},
	Breaker("Wes Status Settings"),
	{
		name = "HEALTH",
		label = "Health",
		options =	{
			{description = "1", data = "1"},{description = "5", data = "5"},{description = "10", data = "10"},{description = "20", data = "20"},{description = "30", data = "30"},
			{description = "40", data = "40"},{description = "50", data = "50"},{description = "60", data = "60"},{description = "70", data = "70"},{description = "80", data = "80"},
			{description = "90", data = "90"},{description = "100", data = "100"},{description = "110", data = "110"},{description = "113 - Vanilla", data = "113"},{description = "120", data = "120"},
			{description = "130", data = "130"},{description = "140", data = "140"},{description = "150 - Default", data = "150"},{description = "160", data = "160"},{description = "170", data = "170"},
			{description = "180", data = "180"},{description = "190", data = "190"},{description = "200", data = "200"},{description = "210", data = "210"},{description = "220", data = "220"},
			{description = "230", data = "230"},{description = "240", data = "240"},{description = "250", data = "250"},{description = "260", data = "260"},{description = "270", data = "270"},
			{description = "280", data = "280"},{description = "290", data = "290"},{description = "300", data = "300"},{description = "400", data = "400"},{description = "500", data = "500"},
			{description = "600", data = "600"},{description = "700", data = "700"},{description = "800", data = "800"},{description = "900", data = "900"},{description = "1000", data = "1000"},
		},

		default = "150",
	},
	{
		name = "SANITY",
		label = "Sanity",
		options =	{
			{description = "1", data = "1"},{description = "5", data = "5"},{description = "10", data = "10"},{description = "20", data = "20"},{description = "30", data = "30"},
			{description = "40", data = "40"},{description = "50", data = "50"},{description = "60", data = "60"},{description = "70", data = "70"},{description = "80", data = "80"},
			{description = "90", data = "90"},{description = "100", data = "100"},{description = "110", data = "110"},{description = "113 - Vanilla", data = "113"},{description = "120", data = "120"},
			{description = "130", data = "130"},{description = "140", data = "140"},{description = "150 - Default", data = "150"},{description = "160", data = "160"},{description = "170", data = "170"},
			{description = "180", data = "180"},{description = "190", data = "190"},{description = "200", data = "200"},{description = "210", data = "210"},{description = "220", data = "220"},
			{description = "230", data = "230"},{description = "240", data = "240"},{description = "250", data = "250"},{description = "260", data = "260"},{description = "270", data = "270"},
			{description = "280", data = "280"},{description = "290", data = "290"},{description = "300", data = "300"},{description = "400", data = "400"},{description = "500", data = "500"},
			{description = "600", data = "600"},{description = "700", data = "700"},{description = "800", data = "800"},{description = "900", data = "900"},{description = "1000", data = "1000"},
		},

		default = "150",
	},
	{
		name = "HUNGER",
		label = "Hunger",
		options =	{
			{description = "1", data = "1"},{description = "5", data = "5"},{description = "10", data = "10"},{description = "20", data = "20"},{description = "30", data = "30"},
			{description = "40", data = "40"},{description = "50", data = "50"},{description = "60", data = "60"},{description = "70", data = "70"},{description = "80", data = "80"},
			{description = "90", data = "90"},{description = "100", data = "100"},{description = "110", data = "110"},{description = "113 - Vanilla", data = "113"},{description = "120", data = "120"},
			{description = "130", data = "130"},{description = "140", data = "140"},{description = "150 - Default", data = "150"},{description = "160", data = "160"},{description = "170", data = "170"},
			{description = "180", data = "180"},{description = "190", data = "190"},{description = "200", data = "200"},{description = "210", data = "210"},{description = "220", data = "220"},
			{description = "230", data = "230"},{description = "240", data = "240"},{description = "250", data = "250"},{description = "260", data = "260"},{description = "270", data = "270"},
			{description = "280", data = "280"},{description = "290", data = "290"},{description = "300", data = "300"},{description = "400", data = "400"},{description = "500", data = "500"},
			{description = "600", data = "600"},{description = "700", data = "700"},{description = "800", data = "800"},{description = "900", data = "900"},{description = "1000", data = "1000"},
		},

		default = "150",
	},
	{
		name = "HUNGER_RATE",
		label = "Hunger Rate",
		options =	{
			{description = "0.10x", data = "0.10"},{description = "0.15x", data = "0.15"},
			{description = "0.20x", data = "0.20"},{description = "0.25x", data = "0.25"},
			{description = "0.30x", data = "0.30"},{description = "0.35x", data = "0.35"},
			{description = "0.40x", data = "0.40"},{description = "0.45x", data = "0.45"},
			{description = "0.50x", data = "0.50"},{description = "0.55x", data = "0.55"},
			{description = "0.60x", data = "0.60"},{description = "0.65x", data = "0.65"},
			{description = "0.70x", data = "0.70"},{description = "0.75x", data = "0.75"},
			{description = "0.80x", data = "0.80"},{description = "0.85x", data = "0.85"},
			{description = "0.90x", data = "0.90"},{description = "0.95x", data = "0.95"},
			{description = "1.00x - Default", data = "1.00"},{description = "1.05x", data = "1.05"},
			{description = "1.10x", data = "1.10"},{description = "1.15x", data = "1.15"},
			{description = "1.20x", data = "1.20"},{description = "1.25x - Vanilla", data = "1.25"},
			{description = "1.30x", data = "1.30"},{description = "1.35x", data = "1.35"},
			{description = "1.40x", data = "1.40"},{description = "1.45x", data = "1.45"},
			{description = "1.50x", data = "1.50"},{description = "1.55x", data = "1.55"},
			{description = "1.60x", data = "1.60"},{description = "1.65x", data = "1.65"},
			{description = "1.70x", data = "1.70"},{description = "1.75x", data = "1.75"},
			{description = "1.80x", data = "1.80"},{description = "1.85x", data = "1.85"},
			{description = "1.90x", data = "1.90"},{description = "1.95x", data = "1.95"},
			{description = "2.00x", data = "2.00"},{description = "2.05x", data = "2.05"},
			{description = "2.10x", data = "2.10"},{description = "2.15x", data = "2.15"},
			{description = "2.20x", data = "2.20"},{description = "2.25x", data = "2.25"},
			{description = "2.30x", data = "2.30"},{description = "2.35x", data = "2.35"},
			{description = "2.40x", data = "2.40"},{description = "2.45x", data = "2.45"},
			{description = "2.50x", data = "2.50"},{description = "2.55x", data = "2.55"},
			{description = "2.60x", data = "2.60"},{description = "2.65x", data = "2.65"},
			{description = "2.70x", data = "2.70"},{description = "2.75x", data = "2.75"},
			{description = "2.80x", data = "2.80"},{description = "2.85x", data = "2.85"},
			{description = "2.90x", data = "2.90"},{description = "2.95x", data = "2.95"},
			{description = "3.00x", data = "3.00"},
		},

		default = "1.00",
	},
	{
		name = "DAMAGE_MULT",
		label = "Damage Multiplier",
		options =	{
            {description = "0.10x", data = "0.10"},{description = "0.15x", data = "0.15"},
			{description = "0.20x", data = "0.20"},{description = "0.25x", data = "0.25"},
			{description = "0.30x", data = "0.30"},{description = "0.35x", data = "0.35"},
			{description = "0.40x", data = "0.40"},{description = "0.45x", data = "0.45"},
			{description = "0.50x", data = "0.50"},{description = "0.55x", data = "0.55"},
			{description = "0.60x", data = "0.60"},{description = "0.65x", data = "0.65"},
			{description = "0.70x", data = "0.70"},{description = "0.75x - Vanilla", data = "0.75"},
			{description = "0.80x", data = "0.80"},{description = "0.85x", data = "0.85"},
			{description = "0.90x", data = "0.90"},{description = "0.95x", data = "0.95"},
			{description = "1.00x - Default", data = "1.00"},{description = "1.05x", data = "1.05"},
			{description = "1.10x", data = "1.10"},{description = "1.15x", data = "1.15"},
			{description = "1.20x", data = "1.20"},{description = "1.25x", data = "1.25"},
			{description = "1.30x", data = "1.30"},{description = "1.35x", data = "1.35"},
			{description = "1.40x", data = "1.40"},{description = "1.45x", data = "1.45"},
			{description = "1.50x", data = "1.50"},{description = "1.55x", data = "1.55"},
			{description = "1.60x", data = "1.60"},{description = "1.65x", data = "1.65"},
			{description = "1.70x", data = "1.70"},{description = "1.75x", data = "1.75"},
			{description = "1.80x", data = "1.80"},{description = "1.85x", data = "1.85"},
			{description = "1.90x", data = "1.90"},{description = "1.95x", data = "1.95"},
			{description = "2.00x", data = "2.00"},{description = "2.05x", data = "2.05"},
			{description = "2.10x", data = "2.10"},{description = "2.15x", data = "2.15"},
			{description = "2.20x", data = "2.20"},{description = "2.25x", data = "2.25"},
			{description = "2.30x", data = "2.30"},{description = "2.35x", data = "2.35"},
			{description = "2.40x", data = "2.40"},{description = "2.45x", data = "2.45"},
			{description = "2.50x", data = "2.50"},{description = "2.55x", data = "2.55"},
			{description = "2.60x", data = "2.60"},{description = "2.65x", data = "2.65"},
			{description = "2.70x", data = "2.70"},{description = "2.75x", data = "2.75"},
			{description = "2.80x", data = "2.80"},{description = "2.85x", data = "2.85"},
			{description = "2.90x", data = "2.90"},{description = "2.95x", data = "2.95"},
			{description = "3.00x", data = "3.00"},
		},

		default = "1.00",
	},
	{
		name = "WALK_SPEED",
		label = "Walk Speed",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4 - Vanilla", data = "4"},{description = "5", data = "5"},
			{description = "6", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
			{description = "16", data = "16"},{description = "17", data = "17"},{description = "18", data = "18"},{description = "19", data = "19"},{description = "20", data = "20"},
		},

		default = "4",
	},
	{
		name = "RUN_SPEED",
		label = "Run Speed",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4", data = "4"},{description = "5", data = "5"},
			{description = "6 - Vanilla", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
			{description = "16", data = "16"},{description = "17", data = "17"},{description = "18", data = "18"},{description = "19", data = "19"},{description = "20", data = "20"},
		},

		default = "6",
	},
	Breaker("Balloon Delay Settings"),
	{
		name = "DELAY_EXPLOSIVE",
		label = "Delay Explosive Balloon",
		options =	{
			{description = "1s", data = "1"},{description = "2s", data = "2"},{description = "3s", data = "3"},{description = "4s", data = "4"},{description = "5s", data = "5"},
			{description = "6s", data = "6"},{description = "7s", data = "7"},{description = "8s", data = "8"},{description = "9s", data = "9"},{description = "10s", data = "10"},
			{description = "11s", data = "11"},{description = "12s", data = "12"},{description = "13s", data = "13"},{description = "14s", data = "14"},{description = "15s", data = "15"},
			{description = "16s", data = "16"},{description = "17s", data = "17"},{description = "18s", data = "18"},{description = "19s", data = "19"},{description = "20s", data = "20"},
		},

		default = "1",
	},
	{
		name = "DELAY_PIG",
		label = "Delay Pig Balloon",
		options =	{
			{description = "1s", data = "1"},{description = "2s", data = "2"},{description = "3s", data = "3"},{description = "4s", data = "4"},{description = "5s", data = "5"},
			{description = "6s", data = "6"},{description = "7s", data = "7"},{description = "8s", data = "8"},{description = "9s", data = "9"},{description = "10s", data = "10"},
			{description = "11s", data = "11"},{description = "12s", data = "12"},{description = "13s", data = "13"},{description = "14s", data = "14"},{description = "15s", data = "15"},
			{description = "16s", data = "16"},{description = "17s", data = "17"},{description = "18s", data = "18"},{description = "19s", data = "19"},{description = "20s", data = "20"},
		},

		default = "1",
	},
	{
		name = "DELAY_SPIDER",
		label = "Delay Spider Balloon",
		options =	{
			{description = "1s", data = "1"},{description = "2s", data = "2"},{description = "3s", data = "3"},{description = "4s", data = "4"},{description = "5s", data = "5"},
			{description = "6s", data = "6"},{description = "7s", data = "7"},{description = "8s", data = "8"},{description = "9s", data = "9"},{description = "10s", data = "10"},
			{description = "11s", data = "11"},{description = "12s", data = "12"},{description = "13s", data = "13"},{description = "14s", data = "14"},{description = "15s", data = "15"},
			{description = "16s", data = "16"},{description = "17s", data = "17"},{description = "18s", data = "18"},{description = "19s", data = "19"},{description = "20s", data = "20"},
		},

		default = "1",
	},
	{
		name = "DELAY_BEEFALO",
		label = "Delay Beefalo Balloon",
		options =	{
			{description = "1s", data = "1"},{description = "2s", data = "2"},{description = "3s", data = "3"},{description = "4s", data = "4"},{description = "5s", data = "5"},
			{description = "6s", data = "6"},{description = "7s", data = "7"},{description = "8s", data = "8"},{description = "9s", data = "9"},{description = "10s", data = "10"},
			{description = "11s", data = "11"},{description = "12s", data = "12"},{description = "13s", data = "13"},{description = "14s", data = "14"},{description = "15s", data = "15"},
			{description = "16s", data = "16"},{description = "17s", data = "17"},{description = "18s", data = "18"},{description = "19s", data = "19"},{description = "20s", data = "20"},
		},

		default = "1",
	},
	Breaker("Pig King Settings"),
	{
		name = "PIGKING_DURATION",
		label = "Pig King Duration",
		options =	{
			{description = "1", data = "1"},{description = "5", data = "5"},{description = "10", data = "10"},{description = "20", data = "20"},{description = "30", data = "30"},
			{description = "40", data = "40"},{description = "50", data = "50"},{description = "60", data = "60"},{description = "70", data = "70"},{description = "80", data = "80"},
			{description = "90", data = "90"},{description = "100", data = "100"},{description = "110", data = "110"},{description = "120", data = "120"},{description = "130", data = "130"},
			{description = "140", data = "140"},{description = "150", data = "150"},{description = "160", data = "160"},{description = "170", data = "170"},{description = "180", data = "180"},
			{description = "190", data = "190"},{description = "200", data = "200"},{description = "210", data = "210"},{description = "220", data = "220"},{description = "230", data = "230"},
			{description = "240", data = "240"},{description = "250", data = "250"},{description = "260", data = "260"},{description = "270", data = "270"},{description = "280", data = "280"},
			{description = "290", data = "290"},{description = "300", data = "300"},
		},

		default = "60",
	},
	{
		name = "PIGMAN_DURATION",
		label = "Pigmans Duration",
		options =	{
			{description = "1", data = "1"},{description = "5", data = "5"},{description = "10", data = "10"},{description = "20", data = "20"},{description = "30", data = "30"},
			{description = "40", data = "40"},{description = "50", data = "50"},{description = "60", data = "60"},{description = "70", data = "70"},{description = "80", data = "80"},
			{description = "90", data = "90"},{description = "100", data = "100"},{description = "110", data = "110"},{description = "120", data = "120"},{description = "130", data = "130"},
			{description = "140", data = "140"},{description = "150", data = "150"},{description = "160", data = "160"},{description = "170", data = "170"},{description = "180", data = "180"},
			{description = "190", data = "190"},{description = "200", data = "200"},{description = "210", data = "210"},{description = "220", data = "220"},{description = "230", data = "230"},
			{description = "240", data = "240"},{description = "250", data = "250"},{description = "260", data = "260"},{description = "270", data = "270"},{description = "280", data = "280"},
			{description = "290", data = "290"},{description = "300", data = "300"},
		},

		default = "60",
	},
	Breaker("Spider Settings"),
	{
		name = "SPIDERDEN_QNT",
		label = "Spiderden Quantity",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4", data = "4"},{description = "5", data = "5"},
			{description = "6", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
			{description = "16", data = "16"},{description = "17", data = "17"},{description = "18", data = "18"},{description = "19", data = "19"},{description = "20", data = "20"},
		},

		default = "3",
	},
	{
		name = "SPIDERDEN_RANGE",
		label = "Spiderden Range",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4", data = "4"},{description = "5", data = "5"},
			{description = "6", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
		},

		default = "7",
	},
	Breaker("Beefalo Settings"),
	{
		name = "BEEFALO_QNT",
		label = "Beefalo Quantity",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4", data = "4"},{description = "5", data = "5"},
			{description = "6", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
			{description = "16", data = "16"},{description = "17", data = "17"},{description = "18", data = "18"},{description = "19", data = "19"},{description = "20", data = "20"},
		},

		default = "1",
	},
	{
		name = "BEEFALO_RANGE",
		label = "Beefalo Range",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4", data = "4"},{description = "5", data = "5"},
			{description = "6", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
		},

		default = "2",
	},
	Breaker("Pigman Settings"),
	{
		name = "PIGMAN_QNT",
		label = "Pigmans Quantity",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4", data = "4"},{description = "5", data = "5"},
			{description = "6", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
			{description = "16", data = "16"},{description = "17", data = "17"},{description = "18", data = "18"},{description = "19", data = "19"},{description = "20", data = "20"},
		},

		default = "3",
	},
	{
		name = "PIGMAN_RANGE",
		label = "Pigmans Range",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4", data = "4"},{description = "5", data = "5"},
			{description = "6", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
		},

		default = "5",
	},
	{
		name = "PIGMAN_HEALTH",
		label = "Pigmans Health",
		options =	{
			{description = "1", data = "1"},{description = "5", data = "5"},{description = "10", data = "10"},{description = "20", data = "20"},{description = "30", data = "30"},
			{description = "40", data = "40"},{description = "50", data = "50"},{description = "60", data = "60"},{description = "70", data = "70"},{description = "80", data = "80"},
			{description = "90", data = "90"},{description = "100", data = "100"},{description = "110", data = "110"},{description = "120", data = "120"},{description = "130", data = "130"},
			{description = "140", data = "140"},{description = "150", data = "150"},{description = "160", data = "160"},{description = "170", data = "170"},{description = "180", data = "180"},
			{description = "190", data = "190"},{description = "200", data = "200"},{description = "210", data = "210"},{description = "220", data = "220"},{description = "230", data = "230"},
			{description = "240", data = "240"},{description = "250", data = "250"},{description = "260", data = "260"},{description = "270", data = "270"},{description = "280", data = "280"},
			{description = "290", data = "290"},{description = "300", data = "300"},{description = "400", data = "400"},{description = "500", data = "500"},{description = "600", data = "600"},
			{description = "700", data = "700"},{description = "800", data = "800"},{description = "900", data = "900"},{description = "1000", data = "1000"},
		},

		default = "400",
	},
	{
		name = "PIGMAN_DAMAGE",
		label = "Pigmans Damage",
		options =	{
			{description = "1", data = "1"},{description = "5", data = "5"},{description = "10", data = "10"},{description = "20", data = "20"},{description = "30", data = "30"},{description = "33", data = "33"},
			{description = "40", data = "40"},{description = "50", data = "50"},{description = "60", data = "60"},{description = "70", data = "70"},{description = "80", data = "80"},
			{description = "90", data = "90"},{description = "100", data = "100"},{description = "110", data = "110"},{description = "120", data = "120"},{description = "130", data = "130"},
			{description = "140", data = "140"},{description = "150", data = "150"},{description = "160", data = "160"},{description = "170", data = "170"},{description = "180", data = "180"},
			{description = "190", data = "190"},{description = "200", data = "200"},{description = "210", data = "210"},{description = "220", data = "220"},{description = "230", data = "230"},
			{description = "240", data = "240"},{description = "250", data = "250"},{description = "260", data = "260"},{description = "270", data = "270"},{description = "280", data = "280"},
			{description = "290", data = "290"},{description = "300", data = "300"},{description = "400", data = "400"},{description = "500", data = "500"},{description = "600", data = "600"},
			{description = "700", data = "700"},{description = "800", data = "800"},{description = "900", data = "900"},{description = "1000", data = "1000"},
		},

		default = "33",
	},
	{
		name = "PIGMAN_ATTACKSPEED",
		label = "Pigmans Attack Speed",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4", data = "4"},{description = "5", data = "5"},
			{description = "6", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
		},

		default = "3",
	},
	{
		name = "PIGMAN_RUNSPEED",
		label = "Pigmans Run Speed",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4", data = "4"},{description = "5", data = "5"},
			{description = "6", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
		},

		default = "5",
	},
	{
		name = "PIGMAN_WALKSPEED",
		label = "Pigmans Walk Speed",
		options =	{
			{description = "1", data = "1"},{description = "2", data = "2"},{description = "3", data = "3"},{description = "4", data = "4"},{description = "5", data = "5"},
			{description = "6", data = "6"},{description = "7", data = "7"},{description = "8", data = "8"},{description = "9", data = "9"},{description = "10", data = "10"},
			{description = "11", data = "11"},{description = "12", data = "12"},{description = "13", data = "13"},{description = "14", data = "14"},{description = "15", data = "15"},
		},

		default = "3",
	},
}
