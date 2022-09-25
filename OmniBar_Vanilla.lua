local addonName, addon = ...

addon.Shared = {}

addon.Resets = {
    --[[ Cold Snap
        - Ice Barrier
        - Frost Ward
        - Frost Nova
        - Ice Block
      ]]
    [12472] = { 11426, 6143, 122, 11958 },

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

    -- Interrupts

    [16979] = { default = true, duration = 15, class = "DRUID" }, -- Feral Charge (Druid)
    [2139] = { default = true, duration = 30, class = "MAGE" }, -- Counterspell (Mage)
    [1766] = { default = true, duration = 10, class = "ROGUE" }, -- Kick (Rogue)
        [1767] = { parent = 1766 },
        [1768] = { parent = 1766 },
        [1769] = { parent = 1766 },
    [6552] = { default = true, duration = 10, class = "WARRIOR" }, -- Pummel (Warrior)
        [6554] = { parent = 6552 },
    [72] = { default = true, duration = 12, class = "WARRIOR" }, -- Shield Bash (Warrior)
        [1671] = { parent = 72 },
        [1672] = { parent = 72 },
    [8042] = { default = true, duration = 5, class = "SHAMAN" }, -- Earth Shock (Shaman)
        [8044] = { parent = 8042 },
        [8045] = { parent = 8042 },
        [8046] = { parent = 8042 },
        [10412] = { parent = 8042 },
        [10413] = { parent = 8042 },
        [10414] = { parent = 8042 },
        -- Flame Shock (shares CD)
        [8050] = { parent = 8042 },
        [8052] = { parent = 8042 },
        [8053] = { parent = 8042 },
        [10447] = { parent = 8042 },
        [10448] = { parent = 8042 },
        [29228] = { parent = 8042 },
        -- Frost Shock (shares CD)
        [8056] = { parent = 8042 },
        [8058] = { parent = 8042 },
        [10472] = { parent = 8042 },
        [10473] = { parent = 8042 },

    -- Priest

    [15487] = { duration = 45, class = "PRIEST" }, -- Silence
    [8122] = { class = "PRIEST", duration = 26 }, -- Psychic Scream
        [8124] = { parent = 8122 },
        [10888] = { parent = 8122 },
        [10890] = { parent = 8122 },
    [10060] = { class = "PRIEST", duration = 180 }, -- Power Infusion

    -- Warlock

    [19244] = { class = "WARLOCK", duration = 30 }, -- Spell Lock
        [19647] = { parent = 19244 },
    [5484] = { class = "WARLOCK", duration = 40 }, -- Howl of Terror
        [17928] = { parent = 5484 },
    [6789] = { class = "WARLOCK", duration = 102 }, -- Death Coil
        [17925] = { parent = 6789 },
        [17926] = { parent = 6789 },
    [6229] = { class = "WARLOCK", duration = 30 }, -- Shadow Ward
        [11739] = { parent = 6229 },
        [11740] = { parent = 6229 },
        [28610] = { parent = 6229 },
    [18288] = { class ="WARLOCK", duration = 180 },  -- Amplify Curse

    -- Shaman

    [8177] = { class = "SHAMAN", duration = 13 }, -- Grounding Totem
    [16188] = { class = "SHAMAN", duration = 180 }, -- Nature's Swiftness

    -- Paladin

    [1022] = { class = "PALADIN", duration = 180 },-- Blessing of Protection
        [5599] = { parent = 1022 },
        [10278] = { parent = 1022 },
    [498] = { class = "PALADIN", duration = 300 }, -- Divine Shield
        [5573] = { parent = 498 },
        [642] = { parent = 498 },
        [1020] = { parent = 498 },
    [853] = { class = "PALADIN", duration = 45 }, -- Hammer of Justice
        [5588] = { parent = 853 },
        [5589] = { parent = 853 },
        [10308] = { parent = 853 },
    [1044] = { class = "PALADIN", duration = 20 }, -- Blessing of Freedom
    [20066] = { class = "PALADIN", duration = 60 }, -- Repentance

    -- Hunter

    [3045] = { class = "HUNTER", duration = 180 }, -- Rapid Fire
    [19263] = { class = "HUNTER", duration = 300 }, -- Deterrence
    [19574] = { class = "HUNTER", duration = 120 }, -- Bestial Wrath
    [1499] = { class = "HUNTER", duration = 15 }, -- Freezing Trap
        [14310] = { parent = 1499 },
        [14311] = { parent = 1499 },
    [19386] = { class = "HUNTER", duration = 120 }, -- Wyvern Sting
        [24132] = { parent = 19386 },
        [24133] = { parent = 19386 },
    [19503] = { class = "HUNTER", duration = 30 }, -- Scatter Shot
    [25999] = { class = "HUNTER", duration = 25 }, -- Boar Charge

    -- Druid

    [22812] = { class = "DRUID", duration = 60 }, -- Barkskin
    [16689] = { class = "DRUID", duration = 60 }, -- Nature's Grasp
        [16810] = { parent = 16689 },
        [16811] = { parent = 16689 },
        [16812] = { parent = 16689 },
        [16813] = { parent = 16689 },
        [17329] = { parent = 16689 },

    [29166] = { class = "DRUID", duration = 360 }, -- Innervate
    [5211] = { class = "DRUID", duration = 60 }, -- Bash
        [6798] = { parent = 5211 },
        [8983] = { parent = 5211 },
    [1850] = { class = "DRUID", duration = 300 }, -- Dash
        [9821] = { parent = 1850 },

    -- Mage

    [11426] = { class = "MAGE", duration = 30 }, -- Ice Barrier
        [13031] = { parent = 11426 },
        [13032] = { parent = 11426 },
        [13033] = { parent = 11426 },
    [543] = { class = "MAGE", duration = 30 }, -- Fire Ward
        [8457] = { parent = 543 },
        [8458] = { parent = 543 },
        [10223] = { parent = 543 },
        [10225] = { parent = 543 },
    [6143] = { class = "MAGE", duration = 30 }, -- Frost Ward
        [8461] = { parent = 6143 },
        [8462] = { parent = 6143 },
        [10177] = { parent = 6143 },
        [28609] = { parent = 6143 },
    [122] = { class = "MAGE", duration = 21 }, -- Frost Nova
        [865] = { parent = 122 },
        [6131] = { parent = 122 },
        [10230] = { parent = 122 },
    [12042] = { class = "MAGE", duration = 180 }, -- Arcane Power
    [11958] = { class = "MAGE", duration = 300 }, -- Ice Block
    [12051] = { class = "MAGE", duration = 420 }, -- Evocation
    [12472] = { class = "MAGE", duration = 600 }, -- Cold Snap

    -- Rogue

    [13750] = { class = "ROGUE", duration = 300 }, -- Adrenaline Rush
    [13877] = { class = "ROGUE", duration = 120 }, -- Blade Flurry
    [408] = { class = "ROGUE", duration = 20 }, -- Kidney Shot
        [8643] = { parent = 408 },
    [2094] = { class = "ROGUE", duration = 180 }, -- Blind
    [2983] = { class = "ROGUE", duration = 180 }, -- Sprint
        [8696] = { parent = 2983 },
        [11305] = { parent = 2983 },
    [5277] = { class = "ROGUE", duration = 180 }, -- Evasion
    [1776] = { class = "ROGUE", duration = 9 }, -- Gouge
        [1777] = { parent = 1776 },
        [8629] = { parent = 1776 },
        [11285] = { parent = 1776 },
        [11286] = { parent = 1776 },
    [14278] = { class = "ROGUE", duration = 20 }, -- Ghostly Strike
    [14183] = { class = "ROGUE", duration = 120 }, -- Premeditation
    [14185] = { class = "ROGUE", duration = 600 }, -- Preparation

    -- Warrior

    [20230] = { class = "WARRIOR", duration = 1800 }, -- Retaliation
    [1719] = { class = "WARRIOR", duration = 1800 }, -- Recklessness
    [871] = { class = "WARRIOR", duration = 1800 }, -- Shield Wall
    [12328] = { class = "WARRIOR", duration = 180 }, -- Death Wish
    [18499] = { class = "WARRIOR", duration = 30 }, -- Berserker Rage
    [12809] = { class = "WARRIOR", duration = 45 }, -- Concussion Blow
    [100] = { class = "WARRIOR", duration = 15 }, -- Charge
        [6178] = { parent = 100 },
        [11578] = { parent = 100 },
    [20252] = { class = "WARRIOR", duration = 25 }, -- Intercept
        [20616] = { parent = 20252 },
        [20617] = { parent = 20252 },

}
