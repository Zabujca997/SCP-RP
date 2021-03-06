-- People often copy jobs. When they do, the GM table does not exist anymore.
-- This line makes the job code work both inside and outside of gamemode files.
-- You should not copy this line into your code.
local GAMEMODE = GAMEMODE or GM
--[[--------------------------------------------------------
Default teams. Please do not edit this file. Please use the darkrpmod addon instead.
--------------------------------------------------------]]
TEAM_CITIZEN = DarkRP.createJob("Citizen", {
    color = Color(255, 120, 0, 255),
    model = {
        "models/leon/pm/playermodels_d-class/classd_2.mdl",
        "models/leon/pm/playermodels_d-class/classd_4.mdl",
        "models/leon/pm/playermodels_d-class/classd_5.mdl",
        "models/leon/pm/playermodels_d-class/classd_6.mdl",
        "models/leon/pm/playermodels_d-class/classd_7.mdl",
        "models/leon/pm/playermodels_d-class/classd_8.mdl",
		"models/leon/pm/playermodels_d-class/classd_9.mdl",
    },
    description = [[Klasa D jest to domyślna klasa która jest brana na Badania]],
    weapons = {"weapon_fists", "weapon_hands", "card_lvl_1"},
    command = "citizen",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_KLASAD = DarkRP.createJob("Klasa D", {
    color = Color(255, 120, 0, 255),
    model = {
        "models/leon/pm/playermodels_d-class/classd_2.mdl",
        "models/leon/pm/playermodels_d-class/classd_4.mdl",
        "models/leon/pm/playermodels_d-class/classd_5.mdl",
        "models/leon/pm/playermodels_d-class/classd_6.mdl",
        "models/leon/pm/playermodels_d-class/classd_7.mdl",
        "models/leon/pm/playermodels_d-class/classd_8.mdl",
		"models/leon/pm/playermodels_d-class/classd_9.mdl",
    },
    description = [[Klasa D jest to domyślna klasa która jest brana na Badania]],
    weapons = {"weapon_fists", "weapon_hands", "card_lvl_1"},
    command = "KlasaD",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Klasy",
})

TEAM_KLASAD = DarkRP.createJob("Klasa b", {
    color = Color(255, 120, 0, 255),
    model = {
        "models/player/kerry/class_jan_2.mdl",
        "models/player/kerry/class_jan_3.mdl",
        "models/player/kerry/class_jan_4.mdl",
        "models/player/kerry/class_jan_5.mdl",
        "models/player/kerry/class_jan_6.mdl",
        "models/player/kerry/class_jan_7.mdl",
    },
    description = [[Uznawani są za niezbędnych do przeprowadzania lokalnych operacji Fundacji i mogą otrzymać dostęp do zabezpieczonych obiektów, które zostały wcześniej poddane kwarantannie i oczyszczone ze wszelkich potencjalnych właściwości wpływania na działanie umysłu i środków memetycznych. W razie uszkodzenia przechowalni lub podjęcia wrogiego działania wobec Fundacji przez inną grupę pracowników klasy B należy jak najszybciej ewakuować do wyznaczonego, bezpiecznego miejsca poza placówką.]],
    weapons = {"weapon_fists", "weapon_hands", "card_lvl_2"},
    command = "KlasaB",
    max = 5,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Klasy",
})

TEAM_KLASAS = DarkRP.createJob("Sprzątacz", {
    color = Color(255, 120, 0, 255),
    model = {
        "models/classd/player/prisoners/jumpsuitm01.mdl",
        "models/classd/player/prisoners/jumpsuitm02.mdl",
        "models/classd/player/prisoners/jumpsuitm03.mdl",
        "models/classd/player/prisoners/jumpsuitm04.mdl",
        "models/classd/player/prisoners/jumpsuitm05.mdl",
        "models/classd/player/prisoners/jumpsuitm06.mdl",
    },
    description = [[Sprzątacze to klasa D uprawniona do czyszczenia fundacji za bycie grzecznym oraz podporządkowanym]],
    weapons = {"weapon_fists", "weapon_hands"},
    command = "Sprzatacz",
    max = 5,
    salary = GAMEMODE.Config.normalsalary,
    admin = 2,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Klasy",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_POLICE = DarkRP.createJob("Civil Protection", {
    color = Color(25, 25, 170, 255),
    model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
    description = [[.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
    command = "cp",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
	customCheck = function(ply) return
        table.HasValue({}, ply:SteamID())
    end,
})

--TEAM_GANG = DarkRP.createJob("Gangster", {
--    color = Color(75, 75, 75, 255),
--    model = {
--        "models/player/Group03/Female_01.mdl",
--	},
--    description = [[]],
--    weapons = {},
--    command = "gangster",
--    max = 3,
--    salary = GAMEMODE.Config.normalsalary,
--    admin = 0,
--    vote = false,
--    hasLicense = false,
--    category = "Gangsters",
--})

TEAM_MOB = DarkRP.createJob("Mob boss", {
    color = Color(25, 25, 25, 255),
    model = "models/player/gman_high.mdl",
    description = [[The Mob boss is the boss of the criminals in the city.
        With his power he coordinates the gangsters and forms an efficient crime organization.
        He has the ability to break into houses by using a lockpick.
        The Mob boss posesses the ability to unarrest you.]],
    weapons = {"lockpick", "unarrest_stick"},
    command = "mobboss",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.34,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
	customCheck = function(ply) return
        table.HasValue({}, ply:SteamID())
    end,
})

--TEAM_GUN = DarkRP.createJob("Gun Dealer", {
--    color = Color(255, 140, 0, 255),
--    model = "models/player/monk.mdl",
--    description = [[A Gun Dealer is the only person who can sell guns to other people.
--        Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
--    weapons = {},
--    command = "gundealer",
--    max = 2,
--    salary = GAMEMODE.Config.normalsalary,
--    admin = 0,
--    vote = false,
--    hasLicense = false,
--    category = "Citizens",
--})

--TEAM_MEDIC = DarkRP.createJob("Medic", {
--    color = Color(47, 79, 79, 255),
--    model = "models/player/kleiner.mdl",
--    description = [[With your medical knowledge you work to restore players to full health.
--        Without a medic, people cannot be healed.
--        Left click with the Medical Kit to heal other players.
--        Right click with the Medical Kit to heal yourself.]],
--    weapons = {"med_kit"},
--    command = "medic",
--    max = 3,
--    salary = GAMEMODE.Config.normalsalary,
--    admin = 0,
--    vote = false,
--    hasLicense = false,
--    medic = true,
--    category = "Citizens",
--})

--TEAM_CHIEF = DarkRP.createJob("Civil Protection Chief", {
--    color = Color(20, 20, 255, 255),
--    model = "models/player/combine_soldier_prisonguard.mdl",
--    description = [[The Chief is the leader of the Civil Protection unit.
--        Coordinate the police force to enforce law in the city.
--        Hit a player with arrest baton to put them in jail.
--        Bash a player with a stunstick and they may learn to obey the law.
--        The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
--        Type /wanted <name> to alert the public to the presence of a criminal.
--        Type /jailpos to set the Jail Position]],
--    weapons = {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"},
--    command = "chief",
--    max = 1,
--    salary = GAMEMODE.Config.normalsalary * 1.67,
--    admin = 0,
--    vote = false,
--    hasLicense = true,
--    chief = true,
--    NeedToChangeFrom = TEAM_POLICE,
--    ammo = {
--        ["pistol"] = 60,
--    },
--    category = "Civil Protection",
--})

--TEAM_MAYOR = DarkRP.createJob("Mayor", {
--    color = Color(150, 20, 20, 255),
--    model = "models/player/breen.mdl",
--    description = [[The Mayor of the city creates laws to govern the city.
--    If you are the mayor you may create and accept warrants.
--    Type /wanted <name>  to warrant a player.
--    Type /jailpos to set the Jail Position.
--    Type /lockdown initiate a lockdown of the city.
--    Everyone must be inside during a lockdown.
--    The cops patrol the area.
--    /unlockdown to end a lockdown]],
--    weapons = {},
--    command = "mayor",
--    max = 1,
--    salary = GAMEMODE.Config.normalsalary * 1.89,
--    admin = 0,
--    vote = true,
--    hasLicense = false,
--    mayor = true,
--    category = "Civil Protection",
--})

--TEAM_HOBO = DarkRP.createJob("Hobo", {
--    color = Color(80, 45, 0, 255),
--    model = "models/player/corpse1.mdl",
--    description = [[The lowest member of society. Everybody laughs at you.
--        You have no home.
--        Beg for your food and money
--        Sing for everyone who passes to get money
--        Make your own wooden home somewhere in a corner or outside someone else's door]],
--    weapons = {"weapon_bugbait"},
--    command = "hobo",
--    max = 5,
--    salary = 0,
--    admin = 0,
--    vote = false,
--    hasLicense = false,
--    candemote = false,
--    hobo = true,
--    category = "Citizens",
--}) 

TEAM_ADMIN = DarkRP.createJob("Administracja", {
    color = Color(255, 0, 0, 250),
	model = {
        "models/player/inv2.mdl",
        "models/kss/tsremastered/smod_tactical_soldier.mdl",
    },
    description = [[Jest to Administracja serwer obecna do pomocy]],
    weapons = {"arrest_stick", "door_ram", "lockpick", "stunstick", "pocketchecker", "hidden_knife", "weapon_camo", "weapon_beam", "card_lvl_5", "wep_jack_job_drpstungun"},
    command = "Admini",
    max = 2,
    salary = 1000,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
	mayor = true,
    chief = true,
    medic = true,
    cook = true,
    hobo = true,
    category = "Admin of duty",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_SCP173 = DarkRP.createJob("SCP 173", {
    color = Color(255, 0, 0, 0),
    model = "models/cpthazama/scp/173.mdl",
    description = [[SCP-173 Mrugacz Porusza sie tylko gdy gracz na niego patrzy]],
    weapons = {"weapon_scp173_rollmops", "scp173"},
    command = "SCP-173",
    max = 1,
    salary = 100,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "SCP",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_SCP106 = DarkRP.createJob("SCP 106", {
    color = Color(255, 0, 0, 0),
    model = "models/vinrax/player/scp106_player.mdl",
    description = [[SCP-106 to osobnik potrafiący przenieść cie do świata łzowego]],
    weapons = {"weapon_scp106_rollmops", "weapon_scp106swep"},
    command = "SCP-106",
    max = 1,
    salary = 100,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "SCP",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_SCP096 = DarkRP.createJob("SCP 096", {
    color = Color(255, 0, 0, 0),
    model = "models/scp096anim/player/scp096pm_raf.mdl",
    description = [[SCP-096 Nie śmiałek nie wolno sie na niego patrzeć!]],
    weapons = {"weapon_scp096swep"},
    command = "SCP-096",
    max = 1,
    salary = 100,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "SCP",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_SCP939 = DarkRP.createJob("SCP 939", {
    color = Color(255, 0, 0, 0),
	model = {
        "models/scp/939/unity/unity_scp_939.mdl",
        "models/scpbreach/scp939redone/scp_939_redone_pm.mdl",
    },
    description = [[SCP-939 Jaszczur! nie widzi lecz bardzo dobrze słyszy]],
    weapons = {"weapon_scp939swep", "weapon_scp939_rollmops"},
    command = "SCP-939",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "SCP",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:1:153685498", "STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_SCP682 = DarkRP.createJob("SCP 682", {
    color = Color(255, 0, 0, 0),
    model = "models/cpthazama/scp/682.mdl",
    description = [[SCP-682 Nie nawidzi życia! zabija wszystko co sie rusza]],
    weapons = {"weapon_scp682_rollmops", "scp682_weapon"},
    command = "SCP-682",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "SCP",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_SCP049 = DarkRP.createJob("SCP 049", {
    color = Color(255, 0, 0, 0),
    model = "models/vinrax/player/scp049_player.mdl",
    description = [[SCP-049 Plaga! zabija dotykiem zamieniając w zombie]],
    weapons = {"scp_049_scp", "weapon_scp049_rollmops"},
    command = "SCP-049",
    max = 1,
    salary = 100,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "SCP",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_SCP966 = DarkRP.createJob("SCP 966", {
    color = Color(255, 0, 0, 0),
    model = "models/cpthazama/scp/966.mdl",
    description = [[SCP-966 Niewidzialny! widzisz go tylko w googlach nightvision]],
    weapons = {"weapon_scp993_z_rollmops"},
    command = "SCP-966",
    max = 1,
    salary = 100,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "SCP",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_MFOR = DarkRP.createJob("Rekrut", {
    color = Color(0, 0, 255, 250),
    model = "models/elan/riot/scp_riot_unit_ntf_npc.mdl",
    description = [[Rekrut Mobilnej formacji operacyjnej]],
    weapons = {"cw_blackops3_mr6", "sg_adrenaline", "weapon_stunstick", "cw_blackops3_melee_combat"},
    command = "MFO-Rekrut",
    max = 0,
    salary = 30,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Mobilna Forumacja Operacyjna",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_MFOSZ = DarkRP.createJob("Szeregowy", {
    color = Color(0, 0, 255, 250),
    model = "models/elan/riot/scp_riot_unit_ntf_player_head1.mdl",
    description = [[Szeregowy Mobilnej formacji operacyjnej]],
    weapons = {"cw_blackops3_mr6", "sg_adrenaline", "weapon_stunstick", "cw_blackops3_dlc2_isr27", "cw_blackops3_melee_combat"},
    command = "MFO-Szeregowy",
    max = 5,
    salary = 40,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Mobilna Forumacja Operacyjna",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_MFOW = DarkRP.createJob("Wsparcie Fundacji Klasy D", {
    color = Color(253, 255, 0, 255),
    model = {
        "models/elan/riot/scp_riot_unit_player_head2.mdl",
        "models/elan/riot/scp_riot_unit_player_head3.mdl",
        "models/elan/riot/scp_riot_unit_player_head4.mdl",
        "models/elan/riot/scp_riot_unit_player_head5.mdl",
        "models/elan/riot/scp_riot_unit_player_head6.mdl",
        "models/elan/riot/scp_riot_unit_player_head7.mdl",
        "models/elan/riot/scp_riot_unit_player_mask1.mdl",
		"models/elan/riot/scp_riot_unit_player_mask2.mdl",
		"models/elan/riot/scp_riot_unit_player_mask3.mdl",
		"models/elan/riot/scp_riot_unit_player_mask4.mdl",
		"models/elan/riot/scp_riot_unit_player_mask5.mdl",
		"models/elan/riot/scp_riot_unit_player_mask6.mdl",
		"models/elan/riot/scp_riot_unit_player_mask7.mdl",
    },
    description = [[Jest to Wsparcie Mobilnej formacji operacyjnej do zamieszek Klasy D]],
    weapons = {"cw_blackops3_mr6", "sg_adrenaline", "weapon_stunstick", "cw_blackops3_dlc2_isr27", "cw_blackops3_melee_combat", "mp_weapon_car", "mp_weapon_r97"},
    command = "MFO-Wsparcie-Klasy-D",
    max = 10,
    salary = 40,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Mobilna Forumacja Operacyjna",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_MFOWS = DarkRP.createJob("Wsparcie Fundacji SCP", {
    color = Color(252, 193, 0, 255),
    model = {
        "models/elan/riot/scp_riot_unit_commander_player_head1.mdl",
        "models/elan/riot/scp_riot_unit_commander_player_head2.mdl",
        "models/elan/riot/scp_riot_unit_commander_player_head3.mdl",
        "models/elan/riot/scp_riot_unit_commander_player_head4.mdl",
        "models/elan/riot/scp_riot_unit_commander_player_head5.mdl",
        "models/elan/riot/scp_riot_unit_commander_player_head6.mdl",
        "models/elan/riot/scp_riot_unit_commander_player_head7.mdl",
		"models/elan/riot/scp_riot_unit_commander_player_mask1.mdl",
		"models/elan/riot/scp_riot_unit_commander_player_mask2.mdl",
		"models/elan/riot/scp_riot_unit_commander_player_mask3.mdl",
		"models/elan/riot/scp_riot_unit_commander_player_mask4.mdl",
		"models/elan/riot/scp_riot_unit_commander_player_mask5.mdl",
		"models/elan/riot/scp_riot_unit_commander_player_mask6.mdl",
    },
    description = [[Jest to Wsparcie Mobilnej formacji operacyjnej do zamieszek SCP]],
    weapons = {"cw_blackops3_mr6", "sg_adrenaline", "weapon_stunstick", "cw_blackops3_dlc2_isr27", "cw_blackops3_melee_combat", "mp_weapon_car", "mp_weapon_r97"},
    command = "MFO-Wsparcie-SCP",
    max = 10,
    salary = 40,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Mobilna Forumacja Operacyjna",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_CIR = DarkRP.createJob("Rekrut", {
    color = Color(0, 107, 0, 255),
    model = "models/friskiukas/bf4/ru_01.mdl",
    description = [[Rekrut rebeli chaosu]],
    weapons = {"cw_makarov", "sg_adrenaline", "cw_smoke_grenade", "cw_flash_grenade", "cw_frag_grenade"},
    command = "CI-Rekrut",
    max = 0,
    salary = 30,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Rebelia Chaosu",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_DEPZARZ = DarkRP.createJob("Rada O5", {
    color = Color(102, 102, 102),
    model = {
        "models/player/scifi_fang.mdl",
        "models/player/scifi_female_01.mdl",
        "models/player/scifi_female_02.mdl",
        "models/player/scifi_female_03.mdl",
        "models/player/scifi_female_04.mdl",
        "models/player/scifi_female_06.mdl",
        "models/player/scifi_female_07.mdl",
		"models/player/scifi_louis.mdl",
		"models/player/scifi_male_01.mdl",
		"models/player/scifi_male_02.mdl",
		"models/player/scifi_male_03.mdl",
		"models/player/scifi_male_04.mdl",
		"models/player/scifi_male_05.mdl",
		"models/player/scifi_male_06.mdl",
		"models/player/scifi_male_07.mdl",
		"models/player/scifi_male_08.mdl",
		"models/player/scifi_male_09.mdl",
    },
    description = [[Departament ten prowadzony jest przez Dowództwo O5. Zarządza się w nim wszystkimi obszarami funkcjonalnymi Fundacji. Do DZ zaliczyć można wszystkie węzły komunikacyjne i kwatery dowodzenia. Departament Zarządzania kontroluje także zasoby finansowe Fundacji i archiwa. Z racji istotności departamentu jego pracownicy podlegają częstym prowokacjom i testom mającym ocenić ich lojalność i wolę zachowania poufności, które zaś składają się na zdolność do pracy na stanowiskach menedżerskich.]],
    weapons = {"weapon_fists", "weapon_hands", "cw_makarov", "door_ram", "cw_blackops3_mr6", "tfa_csgo_medishot"},
    command = "radao5",
    max = 1,
    salary = 300,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Zarząd",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_DEPDYR = DarkRP.createJob("Dyrektor Placówki", {
    color = Color(102, 102, 102),
    model = "models/kss/tsremastered/smod_operator_tac_01.mdl",
    description = [[Dyrektorzy istotnych placówek Fundacji to najważniejsi ich pracownicy, odpowiedzialni są za działalność i bezpieczeństwo placówki oraz wszelkie zabezpieczone w niej anomalie i aktywne projekty. Wszyscy dyrektorzy wydziałów odpowiadają przed Dyrektorem Placówki, który z kolei odpowiada przed Radą O5.]],
    weapons = {"weapon_fists", "weapon_hands", "cw_makarov", "cw_blackops3_mr6", "door_ram", "tfa_csgo_medishot"},
    command = "Dyrektorp",
    max = 1,
    salary = 290,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Zarząd",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_DEPDS = DarkRP.createJob("Specjalista ds. przechowywania", {
    color = Color(102, 102, 102),
    model = "models/cultist/scp_rp/scientists_6.mdl",
    description = [[Specjaliści do spraw przechowywania pełnią w Fundacji dwie role. Pierwszą jest ich członkostwo w zespołach zabezpieczających, które wzywane są do potwierdzonych anomalii, by je zabezpieczyć i zaprojektować dla nich wstępne przechowalnie, a następnie przetransportować do najbliższych placówek przechowawczych Fundacji..]],
    weapons = {"weapon_fists", "weapon_hands", "cw_blackops3_mr6", "tfa_csgo_medishot"},
    command = "spedsp",
    max = 1,
    salary = 150,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Zarząd",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_DEPDS = DarkRP.createJob("Likwidator biologiczny", {
    color = Color(102, 102, 102),
    model = {
        "models/player/tfa_trent_cleaner_grenadier.mdl",
        "models/player/tfa_trent_cleaner_mech.mdl",
        "models/player/ztfa_trent_cleaner_grenadier.mdl",
        "models/player/ztfa_trent_cleaner_mech.mdl",
    },
    description = [[Ma za zadanie zwalczyć biologiczne choroby, Przedmioty czy anomalie.]],
    weapons = {"weapon_fists", "weapon_hands", "cw_blackops3_mr6", "tfa_csgo_medishot", "mp_weapon_car", "mp_weapon_r97"},
    command = "likwidator",
    max = 6,
    salary = 140,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Mobilna Forumacja Operacyjna",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_DEPLOG = DarkRP.createJob("Logistyki", {
    color = Color(102, 102, 102),
    model = {
        "models/cultist/worker_f.mdl",
        "models/cultist/worker_f2.mdl",
        "models/cultist/worker_f3.mdl",
        "models/cultist/worker_f4.mdl",
        "models/cultist/worker_f5.mdl",
        "models/cultist/worker_male.mdl",
		"models/cultist/worker_male2.mdl",
		"models/cultist/worker_male3.mdl",
		"models/cultist/worker_male4.mdl",
		"models/cultist/worker_male5.mdl",
    },
    description = [[DL odpowiedzialny jest za transfery zasobów naturalnych, finansowych oraz ludzkich pomiędzy placówkami Polskiej Filii Fundacji SCP. Transportów dokonuje się, używając środków motoryzacyjnych, wodnych, szynowych, powietrznych, kosmicznych i innych.]],
    weapons = {"weapon_fists", "weapon_hands", "weapon_ticketbook", "salute", "weapon_extinguisher"},
    command = "Dep-log",
    max = 5,
    salary = 50,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Departament",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_DEPMED = DarkRP.createJob("Medycyny", {
    color = Color(102, 102, 102),
    model = {
        "models/humans/group01/scrub1a.mdl",
        "models/humans/group01/scrub1b.mdl",
        "models/humans/group01/scrub1c.mdl",
        "models/humans/group01/scrub1d.mdl",
        "models/humans/group01/scrub1e.mdl",
        "models/humans/group01/scrub1f.mdl",
		"models/humans/group01/scrub1g.mdl",
		"models/humans/group01/scrub1h.mdl",
		"models/humans/group01/scrub1i.mdl",
		"models/humans/group01/scrubfe1a.mdl",
		"models/humans/group01/scrubfe1b.mdl",
		"models/humans/group01/scrubfe1c.mdl",
		"models/humans/group01/scrubfe1d.mdl",
		"models/humans/group01/scrubfe1e.mdl",
    },
    description = [[DM odpowiedzialny jest za utrzymywanie zdrowia pracowników SCP-PL na wysokim poziomie. W związku z pracą, która wykonywana jest w Fundacji, medycy często napotykają się na przypadki problematyczne, których doprowadzenie do porządku wymaga obszernej wiedzy medycznej. Wiedza pozyskana metodami Fundacji pozwoliła na kształcenie medyków w kilku specjalizacjach dodatkowych, np. antymemetycznej.]],
    weapons = {"weapon_fists", "weapon_hands", "weapon_ticketbook", "salute", "weapon_extinguisher"},
    command = "Dep-Med",
    max = 5,
    salary = 50,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Departament",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_DEPET = DarkRP.createJob("Komitet ds. Etyki", {
    color = Color(102, 102, 102),
    model = {
        "models/leon/pm/playermodels_medical_department/medic_chief_2.mdl",
        "models/leon/pm/playermodels_medical_department/medic_chief_3.mdl",
        "models/leon/pm/playermodels_medical_department/medic_chief_4.mdl",
        "models/leon/pm/playermodels_medical_department/medic_chief_5.mdl",
        "models/leon/pm/playermodels_medical_department/medic_chief_6.mdl",
        "models/leon/pm/playermodels_medical_department/medic_chief_7.mdl",
		"models/leon/pm/playermodels_medical_department/medic_chief_8.mdl",
    },
    description = [[Komitet ds. Etyki to niewielki, niezależny departament odpowiedzialny za ewaluacje etyczne Specjalnych Czynności Przechowawczych oraz optymalizację eksperymentów, których wykonywanie wiąże się z marnowaniem lub wyjątkowo okrutnym traktowaniem personelu klasy D lub innych zasobów. Niektórzy pracownicy określają Komitet jako "kiepski żart", ale są to osoby zwyczajnie nieświadome możliwości Komitetu ani jego wpływów.]],
    weapons = {"weapon_fists", "weapon_hands", "weapon_ticketbook", "salute", "weapon_extinguisher"},
    command = "Dep-Etyk",
    max = 3,
    salary = 50,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Departament",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_DEPINZ = DarkRP.createJob("Inżynierii", {
    color = Color(102, 102, 102),
    model = "models/survivors/consivor_mechanic.mdl",
    description = [[DI odpowiedzialny jest za utrzymywanie sprzętu technicznego oraz wszelkich usług dostępnych w placówkach Fundacji na wysokim poziomie sprawności. Placówki zwracają się do tego departamentu także w sprawach projektowania i konstruowania nowych placówek, połączeń komunikacyjnych pomiędzy nimi oraz przeprowadzania konserwacji i napraw.]],
    weapons = {"weapon_fists", "weapon_hands", "weapon_extinguisher", "pocket", "broom"},
    command = "Dep-Inz",
    max = 5,
    salary = 50,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Departament",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_OCHRONA = DarkRP.createJob("Ochrona Główna", {
    color = Color(102, 102, 102),
    model = {
        "models/elan/scpunity/guard/guard_new_texture.mdl",
        "models/armacham/security/guard_1.mdl",
        "models/armacham/security/guard_1.mdl",
        "models/armacham/security/guard_1.mdl",
        "models/armacham/security/guard_1.mdl",
        "models/armacham/security/guard_1.mdl",
        "models/armacham/security/guard_1.mdl",
		"models/armacham/security/guard_1.mdl",
		"models/armacham/security/guard_1.mdl",
		"models/armacham/security/guard_1.mdl",
    },
    description = [[Ochrona główna zajmuje sie pilnowaniem Klasy D pilnowaniem nad bezpieczeństwem i przed wyłomami]],
    weapons = {"weapon_fists", "weapon_hands", "weapon_ticketbook", "salute", "csgo_m9_night", "weapon_stunstick", "cw_fiveseven", "wep_jack_job_drpstungun"},
    command = "Ochrona-G",
    max = 7,
    salary = 90,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Ochrona",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

TEAM_Naukowiec = DarkRP.createJob("Naukowiec", {
    color = Color(102, 102, 102),
    model = {
        "models/leon/pm/playermodels_scientists/science_6.mdl",
        "models/leon/pm/playermodels_scientists/science_7.mdl",
        "models/leon/pm/playermodels_scientists/science_8.mdl",
        "models/leon/pm/playermodels_scientists/science_9.mdl",
        "models/leon/pm/playermodels_scientists/science_10.mdl",
        "models/leon/pm/playermodels_scientists/science_11.mdl",
        "models/leon/pm/playermodels_scientists/science_12.mdl",
		"models/leon/pm/playermodels_scientists/science_13.mdl",
		"models/leon/pm/playermodels_scientists/science_14.mdl",
		"models/leon/pm/playermodels_scientists/science_15.mdl",
		"models/leon/pm/playermodels_scientists/science_16.mdl",
    },
    description = [[Naukowcy przynależą do Wydziału Naukowego Fundacji. Rekrutowani są spośród najinteligentniejszych i najlepiej wyszkolonych badaczy z całego świata. Są wśród nich specjaliści każdej istniejącej dziedziny; począwszy od chemików i botaników, poprzez ezoteryków, a kończąc na fizykach teoretycznych i ksenobiologach. Celem projektów badawczych Fundacji jest lepsze zrozumienie niewyjaśnionych anomalii i sposobów ich funkcjonowania.]],
    weapons = {"weapon_fists", "weapon_hands", "weapon_ticketbook", "salute", "weapon_stunstick"},
    command = "Naukowiec",
    max = 4,
    salary = 100,
    admin = 2,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Naukowcy",
	customCheck = function(ply) return CLIENT or
        table.HasValue({"STEAM_0:0:96053498"}, ply:SteamID())
    end,
})

if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    TEAM_COOK = DarkRP.createJob("Cook", {
        color = Color(238, 99, 99, 255),
        model = "models/player/mossman.mdl",
        description = [[As a cook, it is your responsibility to feed the other members of your city.
            You can spawn a microwave and sell the food you make:
            /buymicrowave]],
        weapons = {},
        command = "cook",
        max = 2,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false,
        cook = true
    })
end

-- Compatibility for when default teams are disabled
TEAM_CITIZEN = TEAM_CITIZEN  or -1
TEAM_POLICE  = TEAM_POLICE   or -1
TEAM_GANG    = TEAM_GANG     or -1
TEAM_MOB     = TEAM_MOB      or -1
TEAM_GUN     = TEAM_GUN      or -1
TEAM_MEDIC   = TEAM_MEDIC    or -1
TEAM_CHIEF   = TEAM_CHIEF    or -1
TEAM_MAYOR   = TEAM_TEAM_ADMIN    or -1
TEAM_HOBO    = TEAM_HOBO     or -1
TEAM_COOK    = TEAM_COOK     or -1

-- Door groups
AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
AddDoorGroup("Gundealer only", TEAM_GUN)


-- Agendas
DarkRP.createAgenda("Gangster's agenda", TEAM_MOB, {TEAM_GANG})
DarkRP.createAgenda("Police agenda", {TEAM_MAYOR, TEAM_CHIEF}, {TEAM_POLICE})

-- Group chats
DarkRP.createGroupChat(function(ply) return ply:isCP() end)
DarkRP.createGroupChat(TEAM_MOB, TEAM_GANG)
DarkRP.createGroupChat(function(listener, ply) return not ply or ply:Team() == listener:Team() end)

-- Initial team when first spawning
GAMEMODE.DefaultTeam = TEAM_CITIZEN

-- Teams that belong to Civil Protection
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}

-- Hitman team
DarkRP.addHitmanTeam(TEAM_MOB)

-- Demote groups
DarkRP.createDemoteGroup("Cops", {TEAM_POLICE, TEAM_CHIEF})
DarkRP.createDemoteGroup("Gangsters", {TEAM_GANG, TEAM_MOB})

-- Default categories
DarkRP.createCategory{
    name = "Citizens",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Civil Protection",
    categorises = "jobs",
    startExpanded = true,
    color = Color(25, 25, 170, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Gangsters",
    categorises = "jobs",
    startExpanded = true,
    color = Color(75, 75, 75, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Admin of duty",
    categorises = "jobs",
    startExpanded = true,
    color = Color(255, 0, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 1,
}

DarkRP.createCategory{
    name = "Zarząd",
    categorises = "jobs",
    startExpanded = true,
    color = Color(255, 0, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 2,
}

DarkRP.createCategory{
    name = "Ochrona",
    categorises = "jobs",
    startExpanded = true,
    color = Color(166, 166, 166, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 4,
}

DarkRP.createCategory{
    name = "Mobilna Forumacja Operacyjna",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 0, 255, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 5,
}

DarkRP.createCategory{
    name = "Klasy",
    categorises = "jobs",
    startExpanded = true,
    color = Color(255, 140, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 3,
}

DarkRP.createCategory{
    name = "SCP",
    categorises = "jobs",
    startExpanded = true,
    color = Color(255, 0, 0, 250),
    canSee = fp{fn.Id, true},
    sortOrder = 5,
}

DarkRP.createCategory{
    name = "Rebelia Chaosu",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 8,
}

DarkRP.createCategory{
    name = "Departament",
    categorises = "jobs",
    startExpanded = true,
    color = Color(255, 171, 171, 171),
    canSee = fp{fn.Id, true},
    sortOrder = 7,
}

DarkRP.createCategory{
    name = "Naukowcy",
    categorises = "jobs",
    startExpanded = true,
    color = Color(255, 0, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 6,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}
