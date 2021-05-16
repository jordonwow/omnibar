local addonName, addon = ...

if WOW_PROJECT_ID ~= WOW_PROJECT_BURNING_CRUSADE_CLASSIC then return end

addon.MAX_ARENA_SIZE = 5

addon.Resets = {
    --[[ Cold Snap
        - Ice Barrier
        - Frost Ward
        - Frost Nova
        - Ice Block
      ]]
    [11958] = { 11426, 6143, 122, 45438 },

    --[[ Preparation
        - Blade Flurry
        - Kidney Shot
        - Blind
        - Sprint
        - Evasion
        - Gouge
        - Ghostly Strike
        - Premeditation
      ]]
    [14185] = { 13877, 408, 2094, 2983, 5277, 1776, 14278, 14183 },
}

addon.Cooldowns = {

    -- Priest

    [17] = { duration = 4, class = "PRIEST" }, -- Power Word: Shield (Rank 1)
        [592] = { parent = 17 }, -- Power Word: Shield (Rank 2)
        [600] = { parent = 17 }, -- Power Word: Shield (Rank 3)
        [3747] = { parent = 17 }, -- Power Word: Shield (Rank 4)
        [6065] = { parent = 17 }, -- Power Word: Shield (Rank 5)
        [6066] = { parent = 17 }, -- Power Word: Shield (Rank 6)
        [10898] = { parent = 17 }, -- Power Word: Shield (Rank 7)
        [10899] = { parent = 17 }, -- Power Word: Shield (Rank 8)
        [10900] = { parent = 17 }, -- Power Word: Shield (Rank 9)
        [10901] = { parent = 17 }, -- Power Word: Shield (Rank 10)
        [25217] = { parent = 17 }, -- Power Word: Shield (Rank 11)
        [25218] = { parent = 17 }, -- Power Word: Shield (Rank 12)
    [586] = { duration = 30, class = "PRIEST" }, -- Fade (Rank 1)
        [9578] = { parent = 586 }, -- Fade (Rank 2)
        [9579] = { parent = 586 }, -- Fade (Rank 3)
        [9592] = { parent = 586 }, -- Fade (Rank 4)
        [10941] = { parent = 586 }, -- Fade (Rank 5)
        [10942] = { parent = 586 }, -- Fade (Rank 6)
        [25429] = { parent = 586 }, -- Fade (Rank 7)
    [13908] = { duration = 600, class = "PRIEST" }, -- Desperate Prayer (Rank 1)
        [19236] = { parent = 13908 }, -- Desperate Prayer (Rank 2)
        [19238] = { parent = 13908 }, -- Desperate Prayer (Rank 3)
        [19240] = { parent = 13908 }, -- Desperate Prayer (Rank 4)
        [19241] = { parent = 13908 }, -- Desperate Prayer (Rank 5)
        [19242] = { parent = 13908 }, -- Desperate Prayer (Rank 6)
        [19243] = { parent = 13908 }, -- Desperate Prayer (Rank 7)
        [25437] = { parent = 13908 }, -- Desperate Prayer (Rank 8)
    [8092] = { duration = 8, class = "PRIEST" }, -- Mind Blast (Rank 1)
        [8102] = { parent = 8092 }, -- Mind Blast (Rank 2)
        [8103] = { parent = 8092 }, -- Mind Blast (Rank 3)
        [8104] = { parent = 8092 }, -- Mind Blast (Rank 4)
        [8105] = { parent = 8092 }, -- Mind Blast (Rank 5)
        [8106] = { parent = 8092 }, -- Mind Blast (Rank 6)
        [10945] = { parent = 8092 }, -- Mind Blast (Rank 7)
        [10946] = { parent = 8092 }, -- Mind Blast (Rank 8)
        [10947] = { parent = 8092 }, -- Mind Blast (Rank 9)
        [25372] = { parent = 8092 }, -- Mind Blast (Rank 10)
        [25375] = { parent = 8092 }, -- Mind Blast (Rank 11)
    [10797] = { duration = 30, class = "PRIEST" }, -- Starshards (Rank 1)
        [19296] = { parent = 10797 }, -- Starshards (Rank 2)
        [19299] = { parent = 10797 }, -- Starshards (Rank 3)
        [19302] = { parent = 10797 }, -- Starshards (Rank 4)
        [19303] = { parent = 10797 }, -- Starshards (Rank 5)
        [19304] = { parent = 10797 }, -- Starshards (Rank 6)
        [19305] = { parent = 10797 }, -- Starshards (Rank 7)
        [25446] = { parent = 10797 }, -- Starshards (Rank 8)
    [32548] = { duration = 300, class = "PRIEST" }, -- Symbol of Hope
    [8122] = { duration = 26, class = "PRIEST" }, -- Psychic Scream (Rank 1)
        [8124] = { parent = 8122 }, -- Psychic Scream (Rank 2)
        [10888] = { parent = 8122 }, -- Psychic Scream (Rank 3)
        [10890] = { parent = 8122 }, -- Psychic Scream (Rank 4)
    [44041] = { duration = 30, class = "PRIEST" }, -- Chastise (Rank 1)
        [44043] = { parent = 44041 }, -- Chastise (Rank 2)
        [44044] = { parent = 44041 }, -- Chastise (Rank 3)
        [44045] = { parent = 44041 }, -- Chastise (Rank 4)
        [44046] = { parent = 44041 }, -- Chastise (Rank 5)
        [44047] = { parent = 44041 }, -- Chastise (Rank 6)
    [32676] = { duration = 120, class = "PRIEST" }, -- Consume Magic
    [2944] = { duration = 180, class = "PRIEST" }, -- Devouring Plague (Rank 1)
        [19276] = { parent = 2944 }, -- Devouring Plague (Rank 2)
        [19277] = { parent = 2944 }, -- Devouring Plague (Rank 3)
        [19278] = { parent = 2944 }, -- Devouring Plague (Rank 4)
        [19279] = { parent = 2944 }, -- Devouring Plague (Rank 5)
        [19280] = { parent = 2944 }, -- Devouring Plague (Rank 6)
        [25467] = { parent = 2944 }, -- Devouring Plague (Rank 7)
    [2651] = { duration = 180, class = "PRIEST" }, -- Elune's Grace
    [6346] = { duration = 180, class = "PRIEST" }, -- Fear Ward
    [13896] = { duration = 180, class = "PRIEST" }, -- Feedback (Rank 1)
        [19271] = { parent = 13896 }, -- Feedback (Rank 2)
        [19273] = { parent = 13896 }, -- Feedback (Rank 3)
        [19274] = { parent = 13896 }, -- Feedback (Rank 4)
        [19275] = { parent = 13896 }, -- Feedback (Rank 5)
        [25441] = { parent = 13896 }, -- Feedback (Rank 6)
    [32379] = { duration = 12, class = "PRIEST" }, -- Shadow Word: Death (Rank 1)
        [32996] = { parent = 32379 }, -- Shadow Word: Death (Rank 2)
    [34433] = { duration = 300, class = "PRIEST" }, -- Shadowfiend
    [33076] = { duration = 10, class = "PRIEST" }, -- Prayer of Mending
    [14751] = { duration = 180, class = "PRIEST" }, -- Inner Focus
    [724] = { duration = 360, class = "PRIEST" }, -- Lightwell (Rank 1)
        [27870] = { parent = 724 }, -- Lightwell (Rank 2)
        [27871] = { parent = 724 }, -- Lightwell (Rank 3)
        [28275] = { parent = 724 }, -- Lightwell (Rank 4)
    [33206] = { duration = 120, class = "PRIEST" }, -- Pain Suppression
    [10060] = { duration = 180, class = "PRIEST" }, -- Power Infusion
    [15487] = { duration = 45, class = "PRIEST" }, -- Silence
    [15286] = { duration = 10, class = "PRIEST" }, -- Vampiric Embrace

    -- Warlock

    [6229] = { duration = 30, class = "WARLOCK" }, -- Shadow Ward (Rank 1)
        [11739] = { parent = 6229 }, -- Shadow Ward (Rank 2)
        [11740] = { parent = 6229 }, -- Shadow Ward (Rank 3)
        [28610] = { parent = 6229 }, -- Shadow Ward (Rank 4)
    [5484] = { duration = 40, class = "WARLOCK" }, -- Howl of Terror (Rank 1)
        [17928] = { parent = 5484 }, -- Howl of Terror (Rank 2)
    [6789] = { duration = 102, class = "WARLOCK" }, -- Death Coil (Rank 1)
        [17925] = { parent = 6789 }, -- Death Coil (Rank 2)
        [17926] = { parent = 6789 }, -- Death Coil (Rank 3)
        [27223] = { parent = 6789 }, -- Death Coil (Rank 4)
    [6353] = { duration = 60, class = "WARLOCK" }, -- Soul Fire (Rank 1)
        [17924] = { parent = 6353 }, -- Soul Fire (Rank 2)
        [27211] = { parent = 6353 }, -- Soul Fire (Rank 3)
        [30545] = { parent = 6353 }, -- Soul Fire (Rank 4)
    [1122] = { duration = 3600, class = "WARLOCK" }, -- Inferno
    [603] = { duration = 60, class = "WARLOCK" }, -- Curse of Doom (Rank 1)
        [30910] = { parent = 603 }, -- Curse of Doom (Rank 2)
    [18540] = { duration = 3600, class = "WARLOCK" }, -- Ritual of Doom
    [29858] = { duration = 300, class = "WARLOCK" }, -- Soulshatter
    [29893] = { duration = 300, class = "WARLOCK" }, -- Ritual of Souls
    [18288] = { duration = 180, class = "WARLOCK" }, -- Amplify Curse
    [17962] = { duration = 10, class = "WARLOCK" }, -- Conflagrate (Rank 1)
        [18930] = { parent = 17962 }, -- Conflagrate (Rank 2)
        [18931] = { parent = 17962 }, -- Conflagrate (Rank 3)
        [18932] = { parent = 17962 }, -- Conflagrate (Rank 4)
        [27266] = { parent = 17962 }, -- Conflagrate (Rank 5)
        [30912] = { parent = 17962 }, -- Conflagrate (Rank 6)
    [18708] = { duration = 900, class = "WARLOCK" }, -- Fel Domination
    [17877] = { duration = 15, class = "WARLOCK" }, -- Shadowburn (Rank 1)
        [18867] = { parent = 17877 }, -- Shadowburn (Rank 2)
        [18868] = { parent = 17877 }, -- Shadowburn (Rank 3)
        [18869] = { parent = 17877 }, -- Shadowburn (Rank 4)
        [18870] = { parent = 17877 }, -- Shadowburn (Rank 5)
        [18871] = { parent = 17877 }, -- Shadowburn (Rank 6)
        [27263] = { parent = 17877 }, -- Shadowburn (Rank 7)
        [30546] = { parent = 17877 }, -- Shadowburn (Rank 8)
    [30283] = { duration = 20, class = "WARLOCK" }, -- Shadowfury (Rank 1)
        [30413] = { parent = 30283 }, -- Shadowfury (Rank 2)
        [30414] = { parent = 30283 }, -- Shadowfury (Rank 3)
    [19244] = { duration = 30, class = "WARLOCK" }, -- Spell Lock
        [19647] = { parent = 19244 },

    -- Shaman

    [8042] = { duration = 5, class = "SHAMAN", default = true }, -- Earth Shock (Rank 1)
        [8044] = { parent = 8042 }, -- Earth Shock (Rank 2)
        [8045] = { parent = 8042 }, -- Earth Shock (Rank 3)
        [8046] = { parent = 8042 }, -- Earth Shock (Rank 4)
        [10412] = { parent = 8042 }, -- Earth Shock (Rank 5)
        [10413] = { parent = 8042 }, -- Earth Shock (Rank 6)
        [10414] = { parent = 8042 }, -- Earth Shock (Rank 7)
        [25454] = { parent = 8042 }, -- Earth Shock (Rank 8)
        [8056] = { parent = 8042 }, -- Frost Shock (Rank 1)
        [8058] = { parent = 8042 }, -- Frost Shock (Rank 2)
        [10472] = { parent = 8042 }, -- Frost Shock (Rank 3)
        [10473] = { parent = 8042 }, -- Frost Shock (Rank 4)
        [25464] = { parent = 8042 }, -- Frost Shock (Rank 5)
        [8050] = { parent = 8042 }, -- Flame Shock (Rank 1)
        [8052] = { parent = 8042 }, -- Flame Shock (Rank 2)
        [8053] = { parent = 8042 }, -- Flame Shock (Rank 3)
        [10447] = { parent = 8042 }, -- Flame Shock (Rank 4)
        [10448] = { parent = 8042 }, -- Flame Shock (Rank 5)
        [29228] = { parent = 8042 }, -- Flame Shock (Rank 6)
        [25457] = { parent = 8042 }, -- Flame Shock (Rank 7)
    [2484] = { duration = 15, class = "SHAMAN" }, -- Earthbind Totem
    [5730] = { duration = 30, class = "SHAMAN" }, -- Stoneclaw Totem (Rank 1)
        [6390] = { parent = 5730 }, -- Stoneclaw Totem (Rank 2)
        [6391] = { parent = 5730 }, -- Stoneclaw Totem (Rank 3)
        [6392] = { parent = 5730 }, -- Stoneclaw Totem (Rank 4)
        [10427] = { parent = 5730 }, -- Stoneclaw Totem (Rank 5)
        [10428] = { parent = 5730 }, -- Stoneclaw Totem (Rank 6)
        [25525] = { parent = 5730 }, -- Stoneclaw Totem (Rank 7)
    [1535] = { duration = 15, class = "SHAMAN" }, -- Fire Nova Totem (Rank 1)
        [8498] = { parent = 1535 }, -- Fire Nova Totem (Rank 2)
        [8499] = { parent = 1535 }, -- Fire Nova Totem (Rank 3)
        [11314] = { parent = 1535 }, -- Fire Nova Totem (Rank 4)
        [11315] = { parent = 1535 }, -- Fire Nova Totem (Rank 5)
        [25546] = { parent = 1535 }, -- Fire Nova Totem (Rank 6)
        [25547] = { parent = 1535 }, -- Fire Nova Totem (Rank 7)
    [556] = { duration = 900, class = "SHAMAN" }, -- Astral Recall
    [8177] = { duration = 13, class = "SHAMAN" }, -- Grounding Totem
    [20608] = { duration = 3600, class = "SHAMAN" }, -- Reincarnation
    [421] = { duration = 6, class = "SHAMAN" }, -- Chain Lightning (Rank 1)
        [930] = { parent = 421 }, -- Chain Lightning (Rank 2)
        [2860] = { parent = 421 }, -- Chain Lightning (Rank 3)
        [10605] = { parent = 421 }, -- Chain Lightning (Rank 4)
        [25439] = { parent = 421 }, -- Chain Lightning (Rank 5)
        [25442] = { parent = 421 }, -- Chain Lightning (Rank 6)
    [2062] = { duration = 1200, class = "SHAMAN" }, -- Earth Elemental Totem
    [2894] = { duration = 1200, class = "SHAMAN" }, -- Fire Elemental Totem
    [2825] = { duration = 600, class = "SHAMAN" }, -- Bloodlust
    [32182] = { duration = 600, class = "SHAMAN" }, -- Heroism
    [16166] = { duration = 180, class = "SHAMAN" }, -- Elemental Mastery
    [16190] = { duration = 300, class = "SHAMAN" }, -- Mana Tide Totem
    [16188] = { duration = 180, class = "SHAMAN" }, -- Nature's Swiftness
    [30823] = { duration = 120, class = "SHAMAN" }, -- Shamanistic Rage
    [17364] = { duration = 10, class = "SHAMAN" }, -- Stormstrike

    -- Paladin

    [20271] = { duration = 10, class = "PALADIN" }, -- Judgement
    [853] = { duration = 45, class = "PALADIN" }, -- Hammer of Justice (Rank 1)
        [5588] = { parent = 853 }, -- Hammer of Justice (Rank 2)
        [5589] = { parent = 853 }, -- Hammer of Justice (Rank 3)
        [10308] = { parent = 853 }, -- Hammer of Justice (Rank 4)
    [1022] = { duration = 180, class = "PALADIN" }, -- Blessing of Protection (Rank 1)
        [5599] = { parent = 1022 }, -- Blessing of Protection (Rank 2)
        [10278] = { parent = 1022 }, -- Blessing of Protection (Rank 3)
    [633] = { duration = 3600, class = "PALADIN" }, -- Lay on Hands (Rank 1)
        [2800] = { parent = 633 }, -- Lay on Hands (Rank 2)
        [10310] = { parent = 633 }, -- Lay on Hands (Rank 3)
        [27154] = { parent = 633 }, -- Lay on Hands (Rank 4)
    [31789] = { duration = 15, class = "PALADIN" }, -- Righteous Defense
    [1044] = { duration = 20, class = "PALADIN" }, -- Blessing of Freedom
    [26573] = { duration = 8, class = "PALADIN" }, -- Consecration (Rank 1)
        [20116] = { parent = 26573 }, -- Consecration (Rank 2)
        [20922] = { parent = 26573 }, -- Consecration (Rank 3)
        [20923] = { parent = 26573 }, -- Consecration (Rank 4)
        [20924] = { parent = 26573 }, -- Consecration (Rank 5)
        [27173] = { parent = 26573 }, -- Consecration (Rank 6)
    [879] = { duration = 15, class = "PALADIN" }, -- Exorcism (Rank 1)
        [5614] = { parent = 879 }, -- Exorcism (Rank 2)
        [5615] = { parent = 879 }, -- Exorcism (Rank 3)
        [10312] = { parent = 879 }, -- Exorcism (Rank 4)
        [10313] = { parent = 879 }, -- Exorcism (Rank 5)
        [10314] = { parent = 879 }, -- Exorcism (Rank 6)
        [27138] = { parent = 879 }, -- Exorcism (Rank 7)
    [2878] = { duration = 30, class = "PALADIN" }, -- Turn Undead (Rank 1)
        [5627] = { parent = 2878 }, -- Turn Undead (Rank 2)
    [19752] = { duration = 3600, class = "PALADIN" }, -- Divine Intervention
    [642] = { duration = 300, class = "PALADIN" }, -- Divine Shield (Rank 1)
        [1020] = { parent = 642 }, -- Divine Shield (Rank 2)
        [498] = { parent = 642 }, -- Divine Protection (Rank 1)
        [5573] = { parent = 642 }, -- Divine Protection (Rank 2)
    [24275] = { duration = 6, class = "PALADIN" }, -- Hammer of Wrath (Rank 1)
        [24274] = { parent = 24275 }, -- Hammer of Wrath (Rank 2)
        [24239] = { parent = 24275 }, -- Hammer of Wrath (Rank 3)
        [27180] = { parent = 24275 }, -- Hammer of Wrath (Rank 4)
    [6940] = { duration = 30, class = "PALADIN" }, -- Blessing of Sacrifice (Rank 1)
        [20729] = { parent = 6940 }, -- Blessing of Sacrifice (Rank 2)
        [27147] = { parent = 6940 }, -- Blessing of Sacrifice (Rank 3)
        [27148] = { parent = 6940 }, -- Blessing of Sacrifice (Rank 4)
    [2812] = { duration = 60, class = "PALADIN" }, -- Holy Wrath (Rank 1)
        [10318] = { parent = 2812 }, -- Holy Wrath (Rank 2)
        [27139] = { parent = 2812 }, -- Holy Wrath (Rank 3)
    [10326] = { duration = 30, class = "PALADIN" }, -- Turn Evil
    [31884] = { duration = 180, class = "PALADIN" }, -- Avenging Wrath
    [31935] = { duration = 30, class = "PALADIN" }, -- Avenger's Shield (Rank 1)
        [32699] = { parent = 31935 }, -- Avenger's Shield (Rank 2)
        [32700] = { parent = 31935 }, -- Avenger's Shield (Rank 3)
    [35395] = { duration = 6, class = "PALADIN" }, -- Crusader Strike
    [20216] = { duration = 120, class = "PALADIN" }, -- Divine Favor
    [31842] = { duration = 180, class = "PALADIN" }, -- Divine Illumination
    [20925] = { duration = 10, class = "PALADIN" }, -- Holy Shield (Rank 1)
        [20927] = { parent = 20925 }, -- Holy Shield (Rank 2)
        [20928] = { parent = 20925 }, -- Holy Shield (Rank 3)
        [27179] = { parent = 20925 }, -- Holy Shield (Rank 4)
    [20473] = { duration = 15, class = "PALADIN" }, -- Holy Shock (Rank 1)
        [20929] = { parent = 20473 }, -- Holy Shock (Rank 2)
        [20930] = { parent = 20473 }, -- Holy Shock (Rank 3)
        [27174] = { parent = 20473 }, -- Holy Shock (Rank 4)
        [33072] = { parent = 20473 }, -- Holy Shock (Rank 5)
    [20066] = { duration = 60, class = "PALADIN" }, -- Repentance

    -- Hunter

    [2973] = { duration = 6, class = "HUNTER" }, -- Raptor Strike (Rank 1)
        [14260] = { parent = 2973 }, -- Raptor Strike (Rank 2)
        [14261] = { parent = 2973 }, -- Raptor Strike (Rank 3)
        [14262] = { parent = 2973 }, -- Raptor Strike (Rank 4)
        [14263] = { parent = 2973 }, -- Raptor Strike (Rank 5)
        [14264] = { parent = 2973 }, -- Raptor Strike (Rank 6)
        [14265] = { parent = 2973 }, -- Raptor Strike (Rank 7)
        [14266] = { parent = 2973 }, -- Raptor Strike (Rank 8)
        [27014] = { parent = 2973 }, -- Raptor Strike (Rank 9)
    [3044] = { duration = 6, class = "HUNTER" }, -- Arcane Shot (Rank 1)
        [14281] = { parent = 3044 }, -- Arcane Shot (Rank 2)
        [14282] = { parent = 3044 }, -- Arcane Shot (Rank 3)
        [14283] = { parent = 3044 }, -- Arcane Shot (Rank 4)
        [14284] = { parent = 3044 }, -- Arcane Shot (Rank 5)
        [14285] = { parent = 3044 }, -- Arcane Shot (Rank 6)
        [14286] = { parent = 3044 }, -- Arcane Shot (Rank 7)
        [14287] = { parent = 3044 }, -- Arcane Shot (Rank 8)
        [27019] = { parent = 3044 }, -- Arcane Shot (Rank 9)
    [5116] = { duration = 12, class = "HUNTER" }, -- Concussive Shot
    [20736] = { duration = 8, class = "HUNTER" }, -- Distracting Shot (Rank 1)
        [14274] = { parent = 20736 }, -- Distracting Shot (Rank 2)
        [15629] = { parent = 20736 }, -- Distracting Shot (Rank 3)
        [15630] = { parent = 20736 }, -- Distracting Shot (Rank 4)
        [15631] = { parent = 20736 }, -- Distracting Shot (Rank 5)
        [15632] = { parent = 20736 }, -- Distracting Shot (Rank 6)
        [27020] = { parent = 20736 }, -- Distracting Shot (Rank 7)
    [1513] = { duration = 30, class = "HUNTER" }, -- Scare Beast (Rank 1)
        [14326] = { parent = 1513 }, -- Scare Beast (Rank 2)
        [14327] = { parent = 1513 }, -- Scare Beast (Rank 3)
    [13795] = { duration = 30, class = "HUNTER" }, -- Immolation Trap (Rank 1)
        [14302] = { parent = 13795 }, -- Immolation Trap (Rank 2)
        [14303] = { parent = 13795 }, -- Immolation Trap (Rank 3)
        [14304] = { parent = 13795 }, -- Immolation Trap (Rank 4)
        [14305] = { parent = 13795 }, -- Immolation Trap (Rank 5)
        [27023] = { parent = 13795 }, -- Immolation Trap (Rank 6)
    [1495] = { duration = 5, class = "HUNTER" }, -- Mongoose Bite (Rank 1)
        [14269] = { parent = 1495 }, -- Mongoose Bite (Rank 2)
        [14270] = { parent = 1495 }, -- Mongoose Bite (Rank 3)
        [14271] = { parent = 1495 }, -- Mongoose Bite (Rank 4)
        [36916] = { parent = 1495 }, -- Mongoose Bite (Rank 5)
    [2643] = { duration = 10, class = "HUNTER" }, -- Multi-Shot (Rank 1)
        [14288] = { parent = 2643 }, -- Multi-Shot (Rank 2)
        [14289] = { parent = 2643 }, -- Multi-Shot (Rank 3)
        [14290] = { parent = 2643 }, -- Multi-Shot (Rank 4)
        [25294] = { parent = 2643 }, -- Multi-Shot (Rank 5)
        [27021] = { parent = 2643 }, -- Multi-Shot (Rank 6)
    [781] = { duration = 5, class = "HUNTER" }, -- Disengage (Rank 1)
        [14272] = { parent = 781 }, -- Disengage (Rank 2)
        [14273] = { parent = 781 }, -- Disengage (Rank 3)
        [27015] = { parent = 781 }, -- Disengage (Rank 4)
    [1499] = { duration = 15, class = "HUNTER" }, -- Freezing Trap (Rank 1)
        [14310] = { parent = 1499 }, -- Freezing Trap (Rank 2)
        [14311] = { parent = 1499 }, -- Freezing Trap (Rank 3)
    [3045] = { duration = 180, class = "HUNTER" }, -- Rapid Fire
    [13809] = { duration = 30, class = "HUNTER" }, -- Frost Trap
    [5384] = { duration = 30, class = "HUNTER" }, -- Feign Death
    [1543] = { duration = 20, class = "HUNTER" }, -- Flare
    [13813] = { duration = 30, class = "HUNTER" }, -- Explosive Trap (Rank 1)
        [14316] = { parent = 13813 }, -- Explosive Trap (Rank 2)
        [14317] = { parent = 13813 }, -- Explosive Trap (Rank 3)
        [27025] = { parent = 13813 }, -- Explosive Trap (Rank 4)
    [3034] = { duration = 15, class = "HUNTER" }, -- Viper Sting (Rank 1)
        [14279] = { parent = 3034 }, -- Viper Sting (Rank 2)
        [14280] = { parent = 3034 }, -- Viper Sting (Rank 3)
        [27018] = { parent = 3034 }, -- Viper Sting (Rank 4)
    [1510] = { duration = 60, class = "HUNTER" }, -- Volley (Rank 1)
        [14294] = { parent = 1510 }, -- Volley (Rank 2)
        [14295] = { parent = 1510 }, -- Volley (Rank 3)
        [27022] = { parent = 1510 }, -- Volley (Rank 4)
    [19801] = { duration = 20, class = "HUNTER" }, -- Tranquilizing Shot
    [34026] = { duration = 5, class = "HUNTER" }, -- Kill Command
    [34600] = { duration = 30, class = "HUNTER" }, -- Snake Trap
    [34477] = { duration = 120, class = "HUNTER" }, -- Misdirection
    [19434] = { duration = 6, class = "HUNTER" }, -- Aimed Shot (Rank 1)
        [20900] = { parent = 19434 }, -- Aimed Shot (Rank 2)
        [20901] = { parent = 19434 }, -- Aimed Shot (Rank 3)
        [20902] = { parent = 19434 }, -- Aimed Shot (Rank 4)
        [20903] = { parent = 19434 }, -- Aimed Shot (Rank 5)
        [20904] = { parent = 19434 }, -- Aimed Shot (Rank 6)
        [27065] = { parent = 19434 }, -- Aimed Shot (Rank 7)
    [19574] = { duration = 120, class = "HUNTER" }, -- Bestial Wrath
    [19306] = { duration = 5, class = "HUNTER" }, -- Counterattack (Rank 1)
        [20909] = { parent = 19306 }, -- Counterattack (Rank 2)
        [20910] = { parent = 19306 }, -- Counterattack (Rank 3)
        [27067] = { parent = 19306 }, -- Counterattack (Rank 4)
    [19263] = { duration = 300, class = "HUNTER" }, -- Deterrence
    [19577] = { duration = 60, class = "HUNTER" }, -- Intimidation
    [23989] = { duration = 300, class = "HUNTER" }, -- Readiness
    [19503] = { duration = 30, class = "HUNTER" }, -- Scatter Shot
    [34490] = { duration = 20, class = "HUNTER" }, -- Silencing Shot
    [19386] = { duration = 120, class = "HUNTER" }, -- Wyvern Sting (Rank 1)
        [24132] = { parent = 19386 }, -- Wyvern Sting (Rank 2)
        [24133] = { parent = 19386 }, -- Wyvern Sting (Rank 3)
        [27068] = { parent = 19386 }, -- Wyvern Sting (Rank 4)
    [25999] = { duration = 25, class = "HUNTER" }, -- Boar Charge

    -- Druid

    [6795] = { duration = 10, class = "DRUID" }, -- Growl
    [5229] = { duration = 60, class = "DRUID" }, -- Enrage
    [5211] = { duration = 60, class = "DRUID" }, -- Bash (Rank 1)
        [6798] = { parent = 5211 }, -- Bash (Rank 2)
        [8983] = { parent = 5211 }, -- Bash (Rank 3)
    [5215] = { duration = 10, class = "DRUID" }, -- Prowl (Rank 1)
        [6783] = { parent = 5215 }, -- Prowl (Rank 2)
        [9913] = { parent = 5215 }, -- Prowl (Rank 3)
    [20484] = { duration = 1200, class = "DRUID" }, -- Rebirth (Rank 1)
        [20739] = { parent = 20484 }, -- Rebirth (Rank 2)
        [20742] = { parent = 20484 }, -- Rebirth (Rank 3)
        [20747] = { parent = 20484 }, -- Rebirth (Rank 4)
        [20748] = { parent = 20484 }, -- Rebirth (Rank 5)
        [26994] = { parent = 20484 }, -- Rebirth (Rank 6)
    [1850] = { duration = 300, class = "DRUID" }, -- Dash (Rank 1)
        [9821] = { parent = 1850 }, -- Dash (Rank 2)
        [33357] = { parent = 1850 }, -- Dash (Rank 3)
    [5209] = { duration = 600, class = "DRUID" }, -- Challenging Roar
    [8998] = { duration = 10, class = "DRUID" }, -- Cower (Rank 1)
        [9000] = { parent = 8998 }, -- Cower (Rank 2)
        [9892] = { parent = 8998 }, -- Cower (Rank 3)
        [31709] = { parent = 8998 }, -- Cower (Rank 4)
        [27004] = { parent = 8998 }, -- Cower (Rank 5)
    [740] = { duration = 600, class = "DRUID" }, -- Tranquility (Rank 1)
        [8918] = { parent = 740 }, -- Tranquility (Rank 2)
        [9862] = { parent = 740 }, -- Tranquility (Rank 3)
        [9863] = { parent = 740 }, -- Tranquility (Rank 4)
        [26983] = { parent = 740 }, -- Tranquility (Rank 5)
    [22842] = { duration = 180, class = "DRUID" }, -- Frenzied Regeneration (Rank 1)
        [22895] = { parent = 22842 }, -- Frenzied Regeneration (Rank 2)
        [22896] = { parent = 22842 }, -- Frenzied Regeneration (Rank 3)
        [26999] = { parent = 22842 }, -- Frenzied Regeneration (Rank 4)
    [16914] = { duration = 60, class = "DRUID" }, -- Hurricane (Rank 1)
        [17401] = { parent = 16914 }, -- Hurricane (Rank 2)
        [17402] = { parent = 16914 }, -- Hurricane (Rank 3)
        [27012] = { parent = 16914 }, -- Hurricane (Rank 4)
    [29166] = { duration = 360, class = "DRUID" }, -- Innervate
    [22812] = { duration = 60, class = "DRUID" }, -- Barkskin
    [33878] = { duration = 6, class = "DRUID" }, -- Mangle (Bear) (Rank 1)
        [33986] = { parent = 33878 }, -- Mangle (Bear) (Rank 2)
        [33987] = { parent = 33878 }, -- Mangle (Bear) (Rank 3)
    [16857] = { duration = 6, class = "DRUID" }, -- Faerie Fire (Feral) (Rank 1)
        [17390] = { parent = 16857 }, -- Faerie Fire (Feral) (Rank 2)
        [17391] = { parent = 16857 }, -- Faerie Fire (Feral) (Rank 3)
        [17392] = { parent = 16857 }, -- Faerie Fire (Feral) (Rank 4)
        [27011] = { parent = 16857 }, -- Faerie Fire (Feral) (Rank 5)
    [16979] = { duration = 15, class = "DRUID", default = true }, -- Feral Charge
    [33831] = { duration = 180, class = "DRUID" }, -- Force of Nature
    [16689] = { duration = 60, class = "DRUID" }, -- Nature's Grasp (Rank 1)
        [16810] = { parent = 16689 }, -- Nature's Grasp (Rank 2)
        [16811] = { parent = 16689 }, -- Nature's Grasp (Rank 3)
        [16812] = { parent = 16689 }, -- Nature's Grasp (Rank 4)
        [16813] = { parent = 16689 }, -- Nature's Grasp (Rank 5)
        [17329] = { parent = 16689 }, -- Nature's Grasp (Rank 6)
        [27009] = { parent = 16689 }, -- Nature's Grasp (Rank 7)
    [17116] = { duration = 180, class = "DRUID" }, -- Nature's Swiftness
    [18562] = { duration = 15, class = "DRUID" }, -- Swiftmend

    -- Mage

    [2136] = { duration = 8, class = "MAGE" }, -- Fire Blast (Rank 1)
        [2137] = { parent = 2136 }, -- Fire Blast (Rank 2)
        [2138] = { parent = 2136 }, -- Fire Blast (Rank 3)
        [8412] = { parent = 2136 }, -- Fire Blast (Rank 4)
        [8413] = { parent = 2136 }, -- Fire Blast (Rank 5)
        [10197] = { parent = 2136 }, -- Fire Blast (Rank 6)
        [10199] = { parent = 2136 }, -- Fire Blast (Rank 7)
        [27078] = { parent = 2136 }, -- Fire Blast (Rank 8)
        [27079] = { parent = 2136 }, -- Fire Blast (Rank 9)
    [122] = { duration = 21, class = "MAGE" }, -- Frost Nova (Rank 1)
        [865] = { parent = 122 }, -- Frost Nova (Rank 2)
        [6131] = { parent = 122 }, -- Frost Nova (Rank 3)
        [10230] = { parent = 122 }, -- Frost Nova (Rank 4)
        [27088] = { parent = 122 }, -- Frost Nova (Rank 5)
    [1953] = { duration = 15, class = "MAGE" }, -- Blink
    [12051] = { duration = 420, class = "MAGE" }, -- Evocation
    [543] = { duration = 30, class = "MAGE" }, -- Fire Ward (Rank 1)
        [8457] = { parent = 543 }, -- Fire Ward (Rank 2)
        [8458] = { parent = 543 }, -- Fire Ward (Rank 3)
        [10223] = { parent = 543 }, -- Fire Ward (Rank 4)
        [10225] = { parent = 543 }, -- Fire Ward (Rank 5)
        [27128] = { parent = 543 }, -- Fire Ward (Rank 6)
    [6143] = { duration = 30, class = "MAGE" }, -- Frost Ward (Rank 1)
        [8461] = { parent = 6143 }, -- Frost Ward (Rank 2)
        [8462] = { parent = 6143 }, -- Frost Ward (Rank 3)
        [10177] = { parent = 6143 }, -- Frost Ward (Rank 4)
        [28609] = { parent = 6143 }, -- Frost Ward (Rank 5)
        [32796] = { parent = 6143 }, -- Frost Ward (Rank 6)
    [2139] = { duration = 24, class = "MAGE", default = true }, -- Counterspell
    [120] = { duration = 10, class = "MAGE" }, -- Cone of Cold (Rank 1)
        [8492] = { parent = 120 }, -- Cone of Cold (Rank 2)
        [10159] = { parent = 120 }, -- Cone of Cold (Rank 3)
        [10160] = { parent = 120 }, -- Cone of Cold (Rank 4)
        [10161] = { parent = 120 }, -- Cone of Cold (Rank 5)
        [27087] = { parent = 120 }, -- Cone of Cold (Rank 6)
    [45438] = { duration = 300, class = "MAGE" }, -- Ice Block
    [66] = { duration = 300, class = "MAGE" }, -- Invisibility
    [43987] = { duration = 300, class = "MAGE" }, -- Ritual of Refreshment
    [12042] = { duration = 180, class = "MAGE" }, -- Arcane Power
    [11113] = { duration = 30, class = "MAGE" }, -- Blast Wave (Rank 1)
        [13018] = { parent = 11113 }, -- Blast Wave (Rank 2)
        [13019] = { parent = 11113 }, -- Blast Wave (Rank 3)
        [13020] = { parent = 11113 }, -- Blast Wave (Rank 4)
        [13021] = { parent = 11113 }, -- Blast Wave (Rank 5)
        [27133] = { parent = 11113 }, -- Blast Wave (Rank 6)
        [33933] = { parent = 11113 }, -- Blast Wave (Rank 7)
    [11958] = { duration = 480, class = "MAGE" }, -- Cold Snap
    [11129] = { duration = 180, class = "MAGE" }, -- Combustion
    [31661] = { duration = 20, class = "MAGE" }, -- Dragon's Breath (Rank 1)
        [33041] = { parent = 31661 }, -- Dragon's Breath (Rank 2)
        [33042] = { parent = 31661 }, -- Dragon's Breath (Rank 3)
        [33043] = { parent = 31661 }, -- Dragon's Breath (Rank 4)
    [11426] = { duration = 30, class = "MAGE" }, -- Ice Barrier (Rank 1)
        [13031] = { parent = 11426 }, -- Ice Barrier (Rank 2)
        [13032] = { parent = 11426 }, -- Ice Barrier (Rank 3)
        [13033] = { parent = 11426 }, -- Ice Barrier (Rank 4)
        [27134] = { parent = 11426 }, -- Ice Barrier (Rank 5)
        [33405] = { parent = 11426 }, -- Ice Barrier (Rank 6)
    [12472] = { duration = 180, class = "MAGE" }, -- Icy Veins
    [12043] = { duration = 180, class = "MAGE" }, -- Presence of Mind
    [31687] = { duration = 180, class = "MAGE" }, -- Summon Water Elemental

    -- Rogue

    [1784] = { duration = 10, class = "ROGUE" }, -- Stealth (Rank 1)
        [1785] = { parent = 1784 }, -- Stealth (Rank 2)
        [1786] = { parent = 1784 }, -- Stealth (Rank 3)
        [1787] = { parent = 1784 }, -- Stealth (Rank 4)
    [1776] = { duration = 10, class = "ROGUE" }, -- Gouge (Rank 1)
        [1777] = { parent = 1776 }, -- Gouge (Rank 2)
        [8629] = { parent = 1776 }, -- Gouge (Rank 3)
        [11285] = { parent = 1776 }, -- Gouge (Rank 4)
        [11286] = { parent = 1776 }, -- Gouge (Rank 5)
        [38764] = { parent = 1776 }, -- Gouge (Rank 6)
    [5277] = { duration = 180, class = "ROGUE" }, -- Evasion (Rank 1)
        [26669] = { parent = 5277 }, -- Evasion (Rank 2)
    [2983] = { duration = 180, class = "ROGUE" }, -- Sprint (Rank 1)
        [8696] = { parent = 2983 }, -- Sprint (Rank 2)
        [11305] = { parent = 2983 }, -- Sprint (Rank 3)
    [1766] = { duration = 10, class = "ROGUE", default = true }, -- Kick (Rank 1)
        [1767] = { parent = 1766 }, -- Kick (Rank 2)
        [1768] = { parent = 1766 }, -- Kick (Rank 3)
        [1769] = { parent = 1766 }, -- Kick (Rank 4)
        [38768] = { parent = 1766 }, -- Kick (Rank 5)
    [1966] = { duration = 10, class = "ROGUE" }, -- Feint (Rank 1)
        [6768] = { parent = 1966 }, -- Feint (Rank 2)
        [8637] = { parent = 1966 }, -- Feint (Rank 3)
        [11303] = { parent = 1966 }, -- Feint (Rank 4)
        [25302] = { parent = 1966 }, -- Feint (Rank 5)
        [27448] = { parent = 1966 }, -- Feint (Rank 6)
    [1725] = { duration = 30, class = "ROGUE" }, -- Distract
    [1856] = { duration = 300, class = "ROGUE" }, -- Vanish (Rank 1)
        [1857] = { parent = 1856 }, -- Vanish (Rank 2)
        [26889] = { parent = 1856 }, -- Vanish (Rank 3)
    [408] = { duration = 20, class = "ROGUE" }, -- Kidney Shot (Rank 1)
        [8643] = { parent = 408 }, -- Kidney Shot (Rank 2)
    [2094] = { duration = 180, class = "ROGUE" }, -- Blind
    [31224] = { duration = 60, class = "ROGUE" }, -- Cloak of Shadows
    [13750] = { duration = 300, class = "ROGUE" }, -- Adrenaline Rush
    [13877] = { duration = 120, class = "ROGUE" }, -- Blade Flurry
    [14177] = { duration = 180, class = "ROGUE" }, -- Cold Blood
    [14278] = { duration = 20, class = "ROGUE" }, -- Ghostly Strike
    [14183] = { duration = 120, class = "ROGUE" }, -- Premeditation
    [14185] = { duration = 600, class = "ROGUE" }, -- Preparation
    [14251] = { duration = 6, class = "ROGUE" }, -- Riposte
    [36554] = { duration = 30, class = "ROGUE" }, -- Shadowstep

    -- Warrior

    [100] = { duration = 15, class = "WARRIOR" }, -- Charge (Rank 1)
        [6178] = { parent = 100 }, -- Charge (Rank 2)
        [11578] = { parent = 100 }, -- Charge (Rank 3)
    [6343] = { duration = 4, class = "WARRIOR" }, -- Thunder Clap (Rank 1)
        [8198] = { parent = 6343 }, -- Thunder Clap (Rank 2)
        [8204] = { parent = 6343 }, -- Thunder Clap (Rank 3)
        [8205] = { parent = 6343 }, -- Thunder Clap (Rank 4)
        [11580] = { parent = 6343 }, -- Thunder Clap (Rank 5)
        [11581] = { parent = 6343 }, -- Thunder Clap (Rank 6)
        [25264] = { parent = 6343 }, -- Thunder Clap (Rank 7)
    [2687] = { duration = 60, class = "WARRIOR" }, -- Bloodrage
    [355] = { duration = 10, class = "WARRIOR" }, -- Taunt
    [7384] = { duration = 5, class = "WARRIOR" }, -- Overpower (Rank 1)
        [7887] = { parent = 7384 }, -- Overpower (Rank 2)
        [11584] = { parent = 7384 }, -- Overpower (Rank 3)
        [11585] = { parent = 7384 }, -- Overpower (Rank 4)
    [72] = { duration = 12, class = "WARRIOR", default = true }, -- Shield Bash (Rank 1)
        [1671] = { parent = 72 }, -- Shield Bash (Rank 2)
        [1672] = { parent = 72 }, -- Shield Bash (Rank 3)
        [29704] = { parent = 72 }, -- Shield Bash (Rank 4)
    [6572] = { duration = 5, class = "WARRIOR" }, -- Revenge (Rank 1)
        [6574] = { parent = 6572 }, -- Revenge (Rank 2)
        [7379] = { parent = 6572 }, -- Revenge (Rank 3)
        [11600] = { parent = 6572 }, -- Revenge (Rank 4)
        [11601] = { parent = 6572 }, -- Revenge (Rank 5)
        [25288] = { parent = 6572 }, -- Revenge (Rank 6)
        [25269] = { parent = 6572 }, -- Revenge (Rank 7)
        [30357] = { parent = 6572 }, -- Revenge (Rank 8)
    [694] = { duration = 120, class = "WARRIOR" }, -- Mocking Blow (Rank 1)
        [7400] = { parent = 694 }, -- Mocking Blow (Rank 2)
        [7402] = { parent = 694 }, -- Mocking Blow (Rank 3)
        [20559] = { parent = 694 }, -- Mocking Blow (Rank 4)
        [20560] = { parent = 694 }, -- Mocking Blow (Rank 5)
        [25266] = { parent = 694 }, -- Mocking Blow (Rank 6)
    [2565] = { duration = 5, class = "WARRIOR" }, -- Shield Block
    [676] = { duration = 60, class = "WARRIOR" }, -- Disarm
    [20230] = { duration = 1800, class = "WARRIOR" }, -- Retaliation
    [5246] = { duration = 180, class = "WARRIOR" }, -- Intimidating Shout
    [1161] = { duration = 600, class = "WARRIOR" }, -- Challenging Shout
    [871] = { duration = 1800, class = "WARRIOR" }, -- Shield Wall
    [20252] = { duration = 25, class = "WARRIOR" }, -- Intercept (Rank 1)
        [20616] = { parent = 20252 }, -- Intercept (Rank 2)
        [20617] = { parent = 20252 }, -- Intercept (Rank 3)
        [25272] = { parent = 20252 }, -- Intercept (Rank 4)
        [25275] = { parent = 20252 }, -- Intercept (Rank 5)
    [18499] = { duration = 30, class = "WARRIOR" }, -- Berserker Rage
    [1680] = { duration = 10, class = "WARRIOR" }, -- Whirlwind
    [6552] = { duration = 10, class = "WARRIOR", default = true }, -- Pummel (Rank 1)
        [6554] = { parent = 6552 }, -- Pummel (Rank 2)
    [1719] = { duration = 1800, class = "WARRIOR" }, -- Recklessness
    [23920] = { duration = 10, class = "WARRIOR" }, -- Spell Reflection
    [3411] = { duration = 30, class = "WARRIOR" }, -- Intervene
    [23881] = { duration = 6, class = "WARRIOR" }, -- Bloodthirst (Rank 1)
        [23892] = { parent = 23881 }, -- Bloodthirst (Rank 2)
        [23893] = { parent = 23881 }, -- Bloodthirst (Rank 3)
        [23894] = { parent = 23881 }, -- Bloodthirst (Rank 4)
        [25251] = { parent = 23881 }, -- Bloodthirst (Rank 5)
        [30335] = { parent = 23881 }, -- Bloodthirst (Rank 6)
    [12809] = { duration = 45, class = "WARRIOR" }, -- Concussion Blow
    [12292] = { duration = 180, class = "WARRIOR" }, -- Death Wish
    [12975] = { duration = 480, class = "WARRIOR" }, -- Last Stand
    [12294] = { duration = 6, class = "WARRIOR" }, -- Mortal Strike (Rank 1)
        [21551] = { parent = 12294 }, -- Mortal Strike (Rank 2)
        [21552] = { parent = 12294 }, -- Mortal Strike (Rank 3)
        [21553] = { parent = 12294 }, -- Mortal Strike (Rank 4)
        [25248] = { parent = 12294 }, -- Mortal Strike (Rank 5)
        [30330] = { parent = 12294 }, -- Mortal Strike (Rank 6)
    [23922] = { duration = 6, class = "WARRIOR" }, -- Shield Slam (Rank 1)
        [23923] = { parent = 23922 }, -- Shield Slam (Rank 2)
        [23924] = { parent = 23922 }, -- Shield Slam (Rank 3)
        [23925] = { parent = 23922 }, -- Shield Slam (Rank 4)
        [25258] = { parent = 23922 }, -- Shield Slam (Rank 5)
        [30356] = { parent = 23922 }, -- Shield Slam (Rank 6)
    [12328] = { duration = 30, class = "WARRIOR" }, -- Sweeping Strikes

}
