local addonName, addon = ...

addon.MAX_ARENA_SIZE = 5

addon.Shared = {
    -- PvP Trinket, Will of the Forsaken
    {
        spells = { 42292, 7744 },
        amount = 45,
    },

    -- Freezing Arrow, Freezing Trap, Frost Trap
    {
        spells = { 60192, 1499, 14310, 14311, 13809 },
        amount = { Survival = 22, default = 28 }
    },

    -- Immolation Trap, Explosive Trap
    {
        spells = { 13795, 14302, 14303, 14304, 14305, 27023, 49055, 49056, 13813, 14316, 14317, 27025, 49066, 49067 },
        amount = { Survival = 22, default = 28 }
    },

    -- Aimed Shot, Multi-Shot
    {
        spells = { 19434, 20900, 20901, 20902, 20903, 20904, 27065, 49049, 49050, 2643, 14288, 14289, 14290, 25294, 27021, 49047, 49048 },
        amount = 10,
    },

    -- Feral Charge - Bear, Feral Charge - Cat
    {
        spells = { 16979, 49376 },
        amount = 15,
    },

    -- Recklessness, Shield Wall, Retaliation
    {
        spells = { 1719, 871, 20230 },
        amount = 12
    },

    -- Avenging Wrath → Divine Protection, Divine Shield, Lay on Hands
    {
        triggers = { 31884 },
        spells = { 498, 642, 633, 2800, 10310, 27154, 48788 },
        amount = 30
    },
}

addon.Resets = {
    --[[ Cold Snap
        - Ice Barrier
        - Frost Ward
        - Frost Nova
        - Ice Block
        - Icy Veins
        - Summon Water Elemental
        - Deep Freeze
        - Cone of Cold
      ]]
    [11958] = { 11426, 6143, 122, 45438, 12472, 31687, 44572, 120 },

    --[[ Preparation
        - Evasion
        - Sprint
        - Vanish
        - Cold Blood
        - Shadowstep
        - Blade Flurry (Glyph of Preparation)
        - Kick (Glyph of Preparation)
        - Dismantle (Glyph of Preparation)
      ]]
    [14185] = { 5277, 2983, 1856, 14177, 36554, 13877, 1766, 51722 },

    --[[ Readiness
        - Concussive Shot
        - Kill Command
        - Master's Call
        - Scare Beast
        - Arcane Shot
        - Distracting Shot
        - Flare
        - Kill Shot
        - Multi-Shot
        - Rapid Fire
        - Tranquilizing Shot
        - Viper Sting
        - Deterrence
        - Disengage
        - Explosive Trap
        - Feign Death
        - Freezing Arrow
        - Freezing Trap
        - Frost Trap
        - Immolation Trap
        - Misdirection
        - Mongoose Bite
        - Raptor Strike
        - Snake Trap
        - Aimed Shot
        - Chimera Shot
        - Silencing Shot
        - Scatter Shot
      ]]
    [23989] = { 5116, 34026, 53271, 1513, 3044, 20736, 1543, 53351, 2643, 3045, 19801, 3034, 19263, 781, 13813, 5384, 60192, 1499, 13809, 13795, 34477, 1495, 2973, 34600, 19434, 53209, 34490, 19503 },

    --[[ Summon Felhunter
        - Spell Lock
      ]]
    [691] = { 19244 },
}

addon.Cooldowns = {

    -- General

    [42292] = { duration = 120, class = "GENERAL", icon = 133453 }, -- PvP Trinket
    [7744] = { duration = 120, class = "GENERAL" }, -- Will of the Forsaken
    [25046] = { duration = 120, class = "GENERAL" }, -- Arcane Torrent (Energy)
        [28730] = { parent = 25046 }, -- Arcane Torrent (Mana)
        [50613] = { parent = 25046 }, -- Arcane Torrent (Runic Power)
    [20594] = { duration = 120, class = "GENERAL" }, -- Stoneform
    [20549] = { duration = 120, class = "GENERAL" }, -- War Stomp
    [26297] = { duration = 180, class = "GENERAL" }, -- Berserking
    [20572] = { duration = 120, class = "GENERAL" }, -- Blood Fury
      [33697] = { parent = 20572 },
      [33702] = { parent = 20572 },
    [54998] = { duration = 60, class = "GENERAL" }, -- Hand-Mounted Pyro Rocket

    -- Priest

    --[[ Fade Modifiers

    - Veiled Shadows (Rank 1)
      Decreases the cooldown of your Fade ability by 3 sec, and reduces the cooldown of your Shadowfiend ability by 1 minute.
      https://www.wowhead.com/wotlk/spell=15274

    - Veiled Shadows (Rank 2)
      Decreases the cooldown of your Fade ability by 6 sec, and reduces the cooldown of your Shadowfiend ability by 2 minutes.
      https://www.wowhead.com/wotlk/spell=15311

    - Quick Fade
      Reduces the cooldown of your Fade ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=18388

    - Glyph of Fade
      Reduces the cooldown of your Fade spell by 9 sec.
      https://www.wowhead.com/wotlk/spell=55684

    - Glyph of Fade
      Reduces the cooldown of your Fade spell by 9 sec.
      https://www.wowhead.com/wotlk/spell=56164

    --]]

    [586] = { duration = 30, class = "PRIEST", adjust = { Shadow = -15 } }, -- Fade

    [724] = { duration = 180, class = "PRIEST" }, -- Lightwell (Rank 1)
        [27870] = { parent = 724 }, -- Lightwell (Rank 2)
        [27871] = { parent = 724 }, -- Lightwell (Rank 3)
        [28275] = { parent = 724 }, -- Lightwell (Rank 4)
        [48086] = { parent = 724 }, -- Lightwell (Rank 5)
        [48087] = { parent = 724 }, -- Lightwell (Rank 6)

    --[[ Fear Ward Modifiers

    - Glyph of Fear Ward
      Reduces cooldown and duration of Fear Ward by 60 sec.
      https://www.wowhead.com/wotlk/spell=55678

    - Glyph of Fear Ward
      Reduces cooldown and duration of Fear Ward by 60 sec.
      https://www.wowhead.com/wotlk/spell=56165

    --]]

    [6346] = { duration = 180, class = "PRIEST" }, -- Fear Ward

    --[[ Mind Blast Modifiers

    - Improved Mind Blast (Rank 1)
      Reduces the cooldown of your Mind Blast spell by 0.5 sec., and while in Shadowform your Mind Blast also has a 20% chance to reduce all healing done to the target by 20% for 10 sec.
      https://www.wowhead.com/wotlk/spell=15273

    - Improved Mind Blast (Rank 2)
      Reduces the cooldown of your Mind Blast spell by 1 sec., and while in Shadowform your Mind Blast also has a 40% chance to reduce all healing done to the target by 20% for 10 sec.
      https://www.wowhead.com/wotlk/spell=15312

    - Improved Mind Blast (Rank 3)
      Reduces the cooldown of your Mind Blast spell by 1.5 sec., and while in Shadowform your Mind Blast also has a 60% chance to reduce all healing done to the target by 20% for 10 sec.
      https://www.wowhead.com/wotlk/spell=15313

    - Improved Mind Blast (Rank 4)
      Reduces the cooldown of your Mind Blast spell by 2 sec., and while in Shadowform your Mind Blast also has a 80% chance to reduce all healing done to the target by 20% for 10 sec.
      https://www.wowhead.com/wotlk/spell=15314

    - Improved Mind Blast (Rank 5)
      Reduces the cooldown of your Mind Blast spell by 2.5 sec., and while in Shadowform your Mind Blast also has a 100% chance to reduce all healing done to the target by 20% for 10 sec.
      https://www.wowhead.com/wotlk/spell=15316

    --]]

    [8092] = { duration = 8, class = "PRIEST", adjust = -2.5 }, -- Mind Blast (Rank 1)
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
        [48126] = { parent = 8092 }, -- Mind Blast (Rank 12)
        [48127] = { parent = 8092 }, -- Mind Blast (Rank 13)

    --[[ Psychic Scream Modifiers

    - Improved Psychic Scream (Rank 1)
      Reduces the cooldown of your Psychic Scream spell by 2 sec.
      https://www.wowhead.com/wotlk/spell=15392

    - Improved Psychic Scream (Rank 2)
      Reduces the cooldown of your Psychic Scream spell by 4 sec.
      https://www.wowhead.com/wotlk/spell=15448

    - Improved Psychic Scream
      Reduces the cooldown of your Psychic Scream ability by 3 sec.
      https://www.wowhead.com/wotlk/spell=44297

    - Glyph of Psychic Scream
      Increases the duration of your Psychic Scream by 2 sec. and increases its cooldown by 8 sec.
      https://www.wowhead.com/wotlk/spell=55676

    - Glyph of Psychic Scream
      Increases the duration of your Psychic Scream by 2 sec. and increases its cooldown by 8 sec.
      https://www.wowhead.com/wotlk/spell=56177

    --]]

    [8122] = { duration = 30, class = "PRIEST", adjust = { Shadow = -7, default = -3 } }, -- Psychic Scream (Rank 1)
        [8124] = { parent = 8122 }, -- Psychic Scream (Rank 2)
        [10888] = { parent = 8122 }, -- Psychic Scream (Rank 3)
        [10890] = { parent = 8122 }, -- Psychic Scream (Rank 4)

    --[[ Power Infusion Modifiers

    - Aspiration (Rank 1)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 10%.
      https://www.wowhead.com/wotlk/spell=47507

    - Aspiration (Rank 2)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 20%.
      https://www.wowhead.com/wotlk/spell=47508

    --]]

    [10060] = { duration = 120, class = "PRIEST", adjust = -24 }, -- Power Infusion

    --[[ Inner Focus Modifiers

    - Aspiration (Rank 1)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 10%.
      https://www.wowhead.com/wotlk/spell=47507

    - Aspiration (Rank 2)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 20%.
      https://www.wowhead.com/wotlk/spell=47508

    --]]

    [14751] = { duration = 180, class = "PRIEST", adjust = -36 }, -- Inner Focus

    [14914] = { duration = 10, class = "PRIEST" }, -- Holy Fire (Rank 1)
        [15262] = { parent = 14914 }, -- Holy Fire (Rank 2)
        [15263] = { parent = 14914 }, -- Holy Fire (Rank 3)
        [15264] = { parent = 14914 }, -- Holy Fire (Rank 4)
        [15265] = { parent = 14914 }, -- Holy Fire (Rank 5)
        [15266] = { parent = 14914 }, -- Holy Fire (Rank 6)
        [15267] = { parent = 14914 }, -- Holy Fire (Rank 7)
        [15261] = { parent = 14914 }, -- Holy Fire (Rank 8)
        [25384] = { parent = 14914 }, -- Holy Fire (Rank 9)
        [48134] = { parent = 14914 }, -- Holy Fire (Rank 10)
        [48135] = { parent = 14914 }, -- Holy Fire (Rank 11)

    [15473] = { duration = 1, class = "PRIEST" }, -- Shadowform ()
        [49868] = { parent = 15473 }, -- Shadowform ()

    [15487] = { duration = 45, class = "PRIEST" }, -- Silence

    [19236] = { duration = 120, class = "PRIEST" }, -- Desperate Prayer (Rank 1)
        [19238] = { parent = 19236 }, -- Desperate Prayer (Rank 2)
        [19240] = { parent = 19236 }, -- Desperate Prayer (Rank 3)
        [19241] = { parent = 19236 }, -- Desperate Prayer (Rank 4)
        [19242] = { parent = 19236 }, -- Desperate Prayer (Rank 5)
        [19243] = { parent = 19236 }, -- Desperate Prayer (Rank 6)
        [25437] = { parent = 19236 }, -- Desperate Prayer (Rank 7)
        [48172] = { parent = 19236 }, -- Desperate Prayer (Rank 8)
        [48173] = { parent = 19236 }, -- Desperate Prayer (Rank 9)

    [32379] = { duration = 12, class = "PRIEST" }, -- Shadow Word: Death (Rank 1)
        [32996] = { parent = 32379 }, -- Shadow Word: Death (Rank 2)
        [48157] = { parent = 32379 }, -- Shadow Word: Death (Rank 3)
        [48158] = { parent = 32379 }, -- Shadow Word: Death (Rank 4)

    --[[ Prayer of Mending Modifiers

    - Divine Providence (Rank 1)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 2%, and reduces the cooldown of your Prayer of Mending by 6%.
      https://www.wowhead.com/wotlk/spell=47562

    - Divine Providence (Rank 2)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 4%, and reduces the cooldown of your Prayer of Mending by 12%.
      https://www.wowhead.com/wotlk/spell=47564

    - Divine Providence (Rank 3)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 6%, and reduces the cooldown of your Prayer of Mending by 18%.
      https://www.wowhead.com/wotlk/spell=47565

    - Divine Providence (Rank 4)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 8%, and reduces the cooldown of your Prayer of Mending by 24%.
      https://www.wowhead.com/wotlk/spell=47566

    - Divine Providence (Rank 5)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 10%, and reduces the cooldown of your Prayer of Mending by 30%.
      https://www.wowhead.com/wotlk/spell=47567

    --]]

    [33076] = { duration = 10, class = "PRIEST", adjust = { Holy = -3 } }, -- Prayer of Mending (Rank 1)
        [48112] = { parent = 33076 }, -- Prayer of Mending (Rank 2)
        [48113] = { parent = 33076 }, -- Prayer of Mending (Rank 3)

    --[[ Pain Suppression Modifiers

    - Aspiration (Rank 1)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 10%.
      https://www.wowhead.com/wotlk/spell=47507

    - Aspiration (Rank 2)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 20%.
      https://www.wowhead.com/wotlk/spell=47508

    --]]

    [33206] = { duration = 180, class = "PRIEST", adjust = -36 }, -- Pain Suppression

    --[[ Shadowfiend Modifiers

    - Veiled Shadows (Rank 1)
      Decreases the cooldown of your Fade ability by 3 sec, and reduces the cooldown of your Shadowfiend ability by 1 minute.
      https://www.wowhead.com/wotlk/spell=15274

    - Veiled Shadows (Rank 2)
      Decreases the cooldown of your Fade ability by 6 sec, and reduces the cooldown of your Shadowfiend ability by 2 minutes.
      https://www.wowhead.com/wotlk/spell=15311

    --]]

    [34433] = { duration = 300, class = "PRIEST", adjust = { Shadow = -120 } }, -- Shadowfiend

    --[[ Circle of Healing Modifiers

    - Divine Providence (Rank 1)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 2%, and reduces the cooldown of your Prayer of Mending by 6%.
      https://www.wowhead.com/wotlk/spell=47562

    - Divine Providence (Rank 2)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 4%, and reduces the cooldown of your Prayer of Mending by 12%.
      https://www.wowhead.com/wotlk/spell=47564

    - Divine Providence (Rank 3)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 6%, and reduces the cooldown of your Prayer of Mending by 18%.
      https://www.wowhead.com/wotlk/spell=47565

    - Divine Providence (Rank 4)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 8%, and reduces the cooldown of your Prayer of Mending by 24%.
      https://www.wowhead.com/wotlk/spell=47566

    - Divine Providence (Rank 5)
      Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by 10%, and reduces the cooldown of your Prayer of Mending by 30%.
      https://www.wowhead.com/wotlk/spell=47567

    --]]

    [34861] = { duration = 6, class = "PRIEST", adjust = { Holy = -1.8 } }, -- Circle of Healing (Rank 1)
        [34863] = { parent = 34861 }, -- Circle of Healing (Rank 2)
        [34864] = { parent = 34861 }, -- Circle of Healing (Rank 3)
        [34865] = { parent = 34861 }, -- Circle of Healing (Rank 4)
        [34866] = { parent = 34861 }, -- Circle of Healing (Rank 5)
        [48088] = { parent = 34861 }, -- Circle of Healing (Rank 6)
        [48089] = { parent = 34861 }, -- Circle of Healing (Rank 7)

    --[[ Penance Modifiers

    - Aspiration (Rank 1)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 10%.
      https://www.wowhead.com/wotlk/spell=47507

    - Aspiration (Rank 2)
      Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by 20%.
      https://www.wowhead.com/wotlk/spell=47508

    - Glyph of Penance
      Reduces the cooldown of Penance by 2 sec.
      https://www.wowhead.com/wotlk/spell=63235

    - Glyph of Penance
      Reduces the cooldown of Penance by 2 sec.
      https://www.wowhead.com/wotlk/spell=63874

    --]]

    [47540] = { duration = 12, class = "PRIEST", adjust = -4 }, -- Penance (Rank 1)
        [53005] = { parent = 47540 }, -- Penance (Rank 2)
        [53006] = { parent = 47540 }, -- Penance (Rank 3)
        [53007] = { parent = 47540 }, -- Penance (Rank 4)

    --[[ Dispersion Modifiers

    - Glyph of Dispersion
      Reduces the cooldown on Dispersion by 45 sec.
      https://www.wowhead.com/wotlk/spell=63229

    - Glyph of Dispersion
      Reduces the cooldown on Dispersion by 45 sec.
      https://www.wowhead.com/wotlk/spell=63872

    --]]

    [47585] = { duration = 120, class = "PRIEST", adjust = -45 }, -- Dispersion

    [47788] = { duration = 180, class = "PRIEST" }, -- Guardian Spirit

    [64044] = { duration = 120, class = "PRIEST" }, -- Psychic Horror

    [64843] = { duration = 480, class = "PRIEST" }, -- Divine Hymn

    [64901] = { duration = 360, class = "PRIEST" }, -- Hymn of Hope

    -- Warlock

    --[[ Curse of Doom Modifiers

    - Amplify Curse
      Reduces the global cooldown of your Curses by 0.5 sec.
      https://www.wowhead.com/wotlk/spell=18288

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    --]]

    [603] = { duration = 60, class = "WARLOCK" }, -- Curse of Doom (Rank 1)
        [30910] = { parent = 603 }, -- Curse of Doom (Rank 2)
        [47867] = { parent = 603 }, -- Curse of Doom (Rank 3)

    [698] = { duration = 120, class = "WARLOCK" }, -- Ritual of Summoning

    [1122] = { duration = 600, class = "WARLOCK" }, -- Inferno

    --[[ Howl of Terror Modifiers

    - Glyph of Howl of Terror
      Reduces the cooldown on your Howl of Terror spell by 8 sec.
      https://www.wowhead.com/wotlk/spell=56217

    --]]

    [5484] = { duration = 40, class = "WARLOCK", adjust = { Affliction = -8 } }, -- Howl of Terror (Rank 1)
        [17928] = { parent = 5484 }, -- Howl of Terror (Rank 2)

    [6229] = { duration = 30, class = "WARLOCK" }, -- Shadow Ward (Rank 1)
        [11739] = { parent = 6229 }, -- Shadow Ward (Rank 2)
        [11740] = { parent = 6229 }, -- Shadow Ward (Rank 3)
        [28610] = { parent = 6229 }, -- Shadow Ward (Rank 4)
        [47890] = { parent = 6229 }, -- Shadow Ward (Rank 5)
        [47891] = { parent = 6229 }, -- Shadow Ward (Rank 6)

    --[[ Death Coil Modifiers

    - Improved Death Coil
      Decreases the cooldown of Death Coil by 15%.
      https://www.wowhead.com/wotlk/spell=24487

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    --]]

    [6789] = { duration = 120, class = "WARLOCK" }, -- Death Coil (Rank 1)
        [17925] = { parent = 6789 }, -- Death Coil (Rank 2)
        [17926] = { parent = 6789 }, -- Death Coil (Rank 3)
        [27223] = { parent = 6789 }, -- Death Coil (Rank 4)
        [47859] = { parent = 6789 }, -- Death Coil (Rank 5)
        [47860] = { parent = 6789 }, -- Death Coil (Rank 6)

    --[[ Shadowburn Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    --]]

    [17877] = { duration = 15, class = "WARLOCK" }, -- Shadowburn (Rank 1)
        [18867] = { parent = 17877 }, -- Shadowburn (Rank 2)
        [18868] = { parent = 17877 }, -- Shadowburn (Rank 3)
        [18869] = { parent = 17877 }, -- Shadowburn (Rank 4)
        [18870] = { parent = 17877 }, -- Shadowburn (Rank 5)
        [18871] = { parent = 17877 }, -- Shadowburn (Rank 6)
        [27263] = { parent = 17877 }, -- Shadowburn (Rank 7)
        [30546] = { parent = 17877 }, -- Shadowburn (Rank 8)
        [47826] = { parent = 17877 }, -- Shadowburn (Rank 9)
        [47827] = { parent = 17877 }, -- Shadowburn (Rank 10)

    --[[ Conflagrate Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    --]]

    [17962] = { duration = 10, class = "WARLOCK" }, -- Conflagrate

    [18540] = { duration = 1800, class = "WARLOCK" }, -- Ritual of Doom

    --[[ Fel Domination Modifiers

    - Nemesis (Rank 1)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 10%.
      https://www.wowhead.com/wotlk/spell=63117

    - Nemesis (Rank 2)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 20%.
      https://www.wowhead.com/wotlk/spell=63121

    - Nemesis (Rank 3)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 30%.
      https://www.wowhead.com/wotlk/spell=63123

    --]]

    [18708] = { duration = 180, class = "WARLOCK", adjust = { Demonology = -54 } }, -- Fel Domination

    [29858] = { duration = 180, class = "WARLOCK" }, -- Soulshatter

    [29893] = { duration = 300, class = "WARLOCK" }, -- Ritual of Souls (Rank 1)
        [58887] = { parent = 29893 }, -- Ritual of Souls (Rank 2)

    --[[ Shadowfury Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 10%.
      https://www.wowhead.com/wotlk/spell=54274

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 20%.
      https://www.wowhead.com/wotlk/spell=54276

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 30%.
      https://www.wowhead.com/wotlk/spell=54277

    --]]

    [30283] = { duration = 20, class = "WARLOCK" }, -- Shadowfury (Rank 1)
        [30413] = { parent = 30283 }, -- Shadowfury (Rank 2)
        [30414] = { parent = 30283 }, -- Shadowfury (Rank 3)
        [47846] = { parent = 30283 }, -- Shadowfury (Rank 4)
        [47847] = { parent = 30283 }, -- Shadowfury (Rank 5)

    --[[ Demonic Empowerment Modifiers

    - Nemesis (Rank 1)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 10%.
      https://www.wowhead.com/wotlk/spell=63117

    - Nemesis (Rank 2)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 20%.
      https://www.wowhead.com/wotlk/spell=63121

    - Nemesis (Rank 3)
      Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by 30%.
      https://www.wowhead.com/wotlk/spell=63123

    --]]

    [47193] = { duration = 60, class = "WARLOCK", adjust = -18 }, -- Demonic Empowerment

    --[[ Shadowflame Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    - Backdraft (Rank 1)
      When you cast Conflagrate, the cast time and global cooldown of your next three Destruction spells is reduced by 10%. Lasts 15 sec.
      https://www.wowhead.com/wotlk/spell=47258

    - Backdraft (Rank 2)
      When you cast Conflagrate, the cast time and global cooldown of your next three Destruction spells is reduced by 20%. Lasts 15 sec.
      https://www.wowhead.com/wotlk/spell=47259

    - Backdraft (Rank 3)
      When you cast Conflagrate, the cast time and global cooldown of your next three Destruction spells is reduced by 30%. Lasts 15 sec.
      https://www.wowhead.com/wotlk/spell=47260

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 10%.
      https://www.wowhead.com/wotlk/spell=54274

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 20%.
      https://www.wowhead.com/wotlk/spell=54276

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 30%.
      https://www.wowhead.com/wotlk/spell=54277

    --]]

    [47897] = { duration = 15, class = "WARLOCK" }, -- Shadowflame (Rank 1)
        [61290] = { parent = 47897 }, -- Shadowflame (Rank 2)

    --[[ Demonic Circle: Teleport Modifiers

    - Glyph of Demonic Circle
      Reduces the cooldown on Demonic Circle by 4 sec.
      https://www.wowhead.com/wotlk/spell=63309

    - Glyph of Demonic Circle
      Reduces the cooldown on Demonic Circle by 4 sec.
      https://www.wowhead.com/wotlk/spell=63937

    --]]

    [48020] = { duration = 30, class = "WARLOCK" }, -- Demonic Circle: Teleport

    --[[ Haunt Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    --]]

    [48181] = { duration = 8, class = "WARLOCK" }, -- Haunt (Rank 1)
        [59161] = { parent = 48181 }, -- Haunt (Rank 2)
        [59163] = { parent = 48181 }, -- Haunt (Rank 3)
        [59164] = { parent = 48181 }, -- Haunt (Rank 4)

    [50581] = { duration = 6, class = "WARLOCK" }, -- Shadow Cleave

    [50589] = { duration = 30, class = "WARLOCK" }, -- Immolation Aura

    --[[ Chaos Bolt Modifiers

    - Demonic Pact (Rank 1)
      Increases your spell damage by 2%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47236

    - Demonic Pact (Rank 2)
      Increases your spell damage by 4%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 4% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47237

    - Demonic Pact (Rank 3)
      Increases your spell damage by 6%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 6% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47238

    - Demonic Pact (Rank 4)
      Increases your spell damage by 8%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 8% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47239

    - Demonic Pact (Rank 5)
      Increases your spell damage by 10%, and your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 10% of your Spell Damage for 45 sec. This effect has a 5 sec cooldown. Does not work on Enslaved demons.
      https://www.wowhead.com/wotlk/spell=47240

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 10%.
      https://www.wowhead.com/wotlk/spell=54274

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 20%.
      https://www.wowhead.com/wotlk/spell=54276

    - Backdraft
      Cast time and global cooldown of your next three Destruction spell reduced by 30%.
      https://www.wowhead.com/wotlk/spell=54277

    - Glyph of Chaos Bolt
      Reduces the cooldown on Chaos Bolt by 2 sec.
      https://www.wowhead.com/wotlk/spell=63304

    --]]

    [50796] = { duration = 12, class = "WARLOCK" }, -- Chaos Bolt (Rank 1)
        [59170] = { parent = 50796 }, -- Chaos Bolt (Rank 2)
        [59171] = { parent = 50796 }, -- Chaos Bolt (Rank 3)
        [59172] = { parent = 50796 }, -- Chaos Bolt (Rank 4)

    [59671] = { duration = 15, class = "WARLOCK" }, -- Challenging Howl

    -- Warlock Pets

    [3716] = { duration = 5, class = "WARLOCK" }, -- Torment (Rank 1)
        [7809] = { parent = 3716 }, -- Torment (Rank 2)
        [7810] = { parent = 3716 }, -- Torment (Rank 3)
        [7811] = { parent = 3716 }, -- Torment (Rank 4)
        [11774] = { parent = 3716 }, -- Torment (Rank 5)
        [11775] = { parent = 3716 }, -- Torment (Rank 6)
        [27270] = { parent = 3716 }, -- Torment (Rank 7)
        [47984] = { parent = 3716 }, -- Torment (Rank 8)

    [4511] = { duration = 10, class = "WARLOCK" }, -- Phase Shift

    [6360] = { duration = 4, class = "WARLOCK" }, -- Soothing Kiss (Rank 1)
        [7813] = { parent = 6360 }, -- Soothing Kiss (Rank 2)
        [11784] = { parent = 6360 }, -- Soothing Kiss (Rank 3)
        [11785] = { parent = 6360 }, -- Soothing Kiss (Rank 4)
        [27275] = { parent = 6360 }, -- Soothing Kiss (Rank 5)

    [7812] = { duration = 60, class = "WARLOCK" }, -- Sacrifice (Rank 1)
        [19438] = { parent = 7812 }, -- Sacrifice (Rank 2)
        [19440] = { parent = 7812 }, -- Sacrifice (Rank 3)
        [19441] = { parent = 7812 }, -- Sacrifice (Rank 4)
        [19442] = { parent = 7812 }, -- Sacrifice (Rank 5)
        [19443] = { parent = 7812 }, -- Sacrifice (Rank 6)
        [27273] = { parent = 7812 }, -- Sacrifice (Rank 7)
        [47985] = { parent = 7812 }, -- Sacrifice (Rank 8)
        [47986] = { parent = 7812 }, -- Sacrifice (Rank 9)

    --[[ Lash of Pain Modifiers

    - Demonic Power (Rank 1)
      Reduces the cooldown of your Succubus' Lash of Pain spell by 3 sec. and reduces the casting time of your Imp's Firebolt spell by 0.25 sec.
      https://www.wowhead.com/wotlk/spell=18126

    - Demonic Power (Rank 2)
      Reduces the cooldown of your Succubus' Lash of Pain spell by 6 sec. and reduces the casting time of your Imp's Firebolt spell by 0.50 sec.
      https://www.wowhead.com/wotlk/spell=18127

    --]]

    [7814] = { duration = 12, class = "WARLOCK", adjust = -6 }, -- Lash of Pain (Rank 1)
        [7815] = { parent = 7814 }, -- Lash of Pain (Rank 2)
        [7816] = { parent = 7814 }, -- Lash of Pain (Rank 3)
        [11778] = { parent = 7814 }, -- Lash of Pain (Rank 4)
        [11779] = { parent = 7814 }, -- Lash of Pain (Rank 5)
        [11780] = { parent = 7814 }, -- Lash of Pain (Rank 6)
        [27274] = { parent = 7814 }, -- Lash of Pain (Rank 7)
        [47991] = { parent = 7814 }, -- Lash of Pain (Rank 8)
        [47992] = { parent = 7814 }, -- Lash of Pain (Rank 9)

    [17735] = { duration = 120, class = "WARLOCK" }, -- Suffering (Rank 1)
        [17750] = { parent = 17735 }, -- Suffering (Rank 2)
        [17751] = { parent = 17735 }, -- Suffering (Rank 3)
        [17752] = { parent = 17735 }, -- Suffering (Rank 4)
        [27271] = { parent = 17735 }, -- Suffering (Rank 5)
        [33701] = { parent = 17735 }, -- Suffering (Rank 6)
        [47989] = { parent = 17735 }, -- Suffering (Rank 7)
        [47990] = { parent = 17735 }, -- Suffering (Rank 8)

    [19244] = { duration = 24, class = "WARLOCK", default = true }, -- Spell Lock (Rank 1)
        [19647] = { parent = 19244 }, -- Spell Lock (Rank 2)

    [19505] = { duration = 8, class = "WARLOCK" }, -- Devour Magic (Rank 1)
        [19731] = { parent = 19505 }, -- Devour Magic (Rank 2)
        [19734] = { parent = 19505 }, -- Devour Magic (Rank 3)
        [19736] = { parent = 19505 }, -- Devour Magic (Rank 4)
        [27276] = { parent = 19505 }, -- Devour Magic (Rank 5)
        [27277] = { parent = 19505 }, -- Devour Magic (Rank 6)
        [48011] = { parent = 19505 }, -- Devour Magic (Rank 7)

    [30151] = { duration = 30, class = "WARLOCK" }, -- Intercept (Rank 1)
        [30194] = { parent = 30151 }, -- Intercept (Rank 2)
        [30198] = { parent = 30151 }, -- Intercept (Rank 3)
        [47996] = { parent = 30151 }, -- Intercept (Rank 4)

    [30213] = { duration = 6, class = "WARLOCK" }, -- Cleave (Rank 1)
        [30219] = { parent = 30213 }, -- Cleave (Rank 2)
        [30223] = { parent = 30213 }, -- Cleave (Rank 3)
        [47994] = { parent = 30213 }, -- Cleave (Rank 4)

    [33698] = { duration = 5, class = "WARLOCK" }, -- Anguish (Rank 1)
        [33699] = { parent = 33698 }, -- Anguish (Rank 2)
        [33700] = { parent = 33698 }, -- Anguish (Rank 3)
        [47993] = { parent = 33698 }, -- Anguish (Rank 4)

    --[[ Shadow Bite Modifiers

    - Improved Felhunter (Rank 1)
      Your Felhunter regains 4% of its maximum mana each time it hits with its Shadow Bite ability and the cooldown on that ability is reduced by 2 sec. In addition, increases the effect of your Felhunter's Fel Intelligence by 5%.
      https://www.wowhead.com/wotlk/spell=54037

    - Improved Felhunter (Rank 2)
      Your Felhunter regains 8% of its maximum mana each time it hits with its Shadow Bite ability and the cooldown on that ability is reduced by 4 sec. In addition, increases the effect of your Felhunter's Fel Intelligence by 10%.
      https://www.wowhead.com/wotlk/spell=54038

    --]]

    [54049] = { duration = 6, class = "WARLOCK" }, -- Shadow Bite (Rank 1)
        [54050] = { parent = 54049 }, -- Shadow Bite (Rank 2)
        [54051] = { parent = 54049 }, -- Shadow Bite (Rank 3)
        [54052] = { parent = 54049 }, -- Shadow Bite (Rank 4)
        [54053] = { parent = 54049 }, -- Shadow Bite (Rank 5)

    -- Shaman

    --[[ Chain Lightning Modifiers

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    - Nature's Swiftness
      When activated, your next Nature spell with a base casting time less than 10 sec. becomes an instant cast spell. Nature's Swiftness shares a cooldown with Elemental Mastery.
      https://www.wowhead.com/wotlk/spell=16188

    - Storm, Earth and Fire (Rank 1)
      Reduces the cooldown of your Chain Lightning spell by .75 sec, your Earthbind Totem also has a 33% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 20%.
      https://www.wowhead.com/wotlk/spell=51483

    - Storm, Earth and Fire (Rank 2)
      Reduces the cooldown of your Chain Lightning spell by 1.5 sec, your Earthbind Totem also has a 66% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 40%.
      https://www.wowhead.com/wotlk/spell=51485

    - Storm, Earth and Fire (Rank 3)
      Reduces the cooldown of your Chain Lightning spell by 2.5 sec, your Earthbind Totem also has a 100% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 60%.
      https://www.wowhead.com/wotlk/spell=51486

    --]]

    [421] = { duration = 6, class = "SHAMAN", adjust = { Elemental = -2.5 } }, -- Chain Lightning (Rank 1)
        [930] = { parent = 421 }, -- Chain Lightning (Rank 2)
        [2860] = { parent = 421 }, -- Chain Lightning (Rank 3)
        [10605] = { parent = 421 }, -- Chain Lightning (Rank 4)
        [25439] = { parent = 421 }, -- Chain Lightning (Rank 5)
        [25442] = { parent = 421 }, -- Chain Lightning (Rank 6)
        [49270] = { parent = 421 }, -- Chain Lightning (Rank 7)
        [49271] = { parent = 421 }, -- Chain Lightning (Rank 8)

    --[[ Astral Recall Modifiers

    - Glyph of Astral Recall
      Cooldown of your Astral Recall spell reduced by 7.5 min.
      https://www.wowhead.com/wotlk/spell=58058

    - Glyph of Astral Recall
      Cooldown of your Astral Recall spell reduced by 7.5 min.
      https://www.wowhead.com/wotlk/spell=58260

    --]]

    [556] = { duration = 900, class = "SHAMAN" }, -- Astral Recall

    --[[ Fire Nova Modifiers

    - Improved Fire Nova (Rank 1)
      Increases the damage done by your Fire Nova by 10% and reduces the cooldown by 2 sec.
      https://www.wowhead.com/wotlk/spell=16086

    - Improved Fire Nova (Rank 2)
      Increases the damage done by your Fire Nova by 20% and reduces the cooldown by 4 sec.
      https://www.wowhead.com/wotlk/spell=16544

    - Glyph of Fire Nova
      Reduces the cooldown of your Fire Nova spell by 3 seconds.
      https://www.wowhead.com/wotlk/spell=55450

    - Glyph of Fire Nova
      Reduces the cooldown of your Fire Nova spell by 3 seconds.
      https://www.wowhead.com/wotlk/spell=55544

    --]]

    [1535] = { duration = 10, class = "SHAMAN" }, -- Fire Nova (Rank 1)
        [8498] = { parent = 1535 }, -- Fire Nova (Rank 2)
        [8499] = { parent = 1535 }, -- Fire Nova (Rank 3)
        [11314] = { parent = 1535 }, -- Fire Nova (Rank 4)
        [11315] = { parent = 1535 }, -- Fire Nova (Rank 5)
        [25546] = { parent = 1535 }, -- Fire Nova (Rank 6)
        [25547] = { parent = 1535 }, -- Fire Nova (Rank 7)
        [61649] = { parent = 1535 }, -- Fire Nova (Rank 8)
        [61657] = { parent = 1535 }, -- Fire Nova (Rank 9)

    [2062] = { duration = 600, class = "SHAMAN" }, -- Earth Elemental Totem

    --[[ Earthbind Totem Modifiers

    - Earth's Grasp (Rank 1)
      Increases the health of your Stoneclaw Totem by 25% and the radius of your Earthbind Totem by 10%, and reduces the cooldown of both totems by 15%.
      https://www.wowhead.com/wotlk/spell=16043

    - Earth's Grasp (Rank 2)
      Increases the health of your Stoneclaw Totem by 50% and the radius of your Earthbind Totem by 20%, and reduces the cooldown of both totems by 30%.
      https://www.wowhead.com/wotlk/spell=16130

    --]]

    [2484] = { duration = 15, class = "SHAMAN", adjust = -4.5 }, -- Earthbind Totem

    [2825] = { duration = 300, class = "SHAMAN" }, -- Bloodlust

    --[[ Fire Elemental Totem Modifiers

    - Glyph of Fire Elemental Totem
      Reduces the cooldown of your Fire Elemental Totem by 5 min.
      https://www.wowhead.com/wotlk/spell=55455

    - Glyph of Fire Elemental Totem
      Reduces the cooldown of your Fire Elemental Totem by 5 min.
      https://www.wowhead.com/wotlk/spell=55542

    --]]

    [2894] = { duration = 600, class = "SHAMAN", adjust = -300 }, -- Fire Elemental Totem

    --[[ Stoneclaw Totem Modifiers

    - Earth's Grasp (Rank 1)
      Increases the health of your Stoneclaw Totem by 25% and the radius of your Earthbind Totem by 10%, and reduces the cooldown of both totems by 15%.
      https://www.wowhead.com/wotlk/spell=16043

    - Earth's Grasp (Rank 2)
      Increases the health of your Stoneclaw Totem by 50% and the radius of your Earthbind Totem by 20%, and reduces the cooldown of both totems by 30%.
      https://www.wowhead.com/wotlk/spell=16130

    --]]

    [5730] = { duration = 30, class = "SHAMAN", adjust = -9 }, -- Stoneclaw Totem (Rank 1)
        [6390] = { parent = 5730 }, -- Stoneclaw Totem (Rank 2)
        [6391] = { parent = 5730 }, -- Stoneclaw Totem (Rank 3)
        [6392] = { parent = 5730 }, -- Stoneclaw Totem (Rank 4)
        [10427] = { parent = 5730 }, -- Stoneclaw Totem (Rank 5)
        [10428] = { parent = 5730 }, -- Stoneclaw Totem (Rank 6)
        [25525] = { parent = 5730 }, -- Stoneclaw Totem (Rank 7)
        [58580] = { parent = 5730 }, -- Stoneclaw Totem (Rank 8)
        [58581] = { parent = 5730 }, -- Stoneclaw Totem (Rank 9)
        [58582] = { parent = 5730 }, -- Stoneclaw Totem (Rank 10)

    --[[ Earth Shock Modifiers

    - Reverberation (Rank 1)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.2 sec.
      https://www.wowhead.com/wotlk/spell=16040

    - Reverberation (Rank 2)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.4 sec.
      https://www.wowhead.com/wotlk/spell=16113

    - Reverberation (Rank 3)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.6 sec.
      https://www.wowhead.com/wotlk/spell=16114

    - Reverberation (Rank 4)
      Reduces the cooldown of your Shock and Wind Shear spells by 0.8 sec.
      https://www.wowhead.com/wotlk/spell=16115

    - Reverberation (Rank 5)
      Reduces the cooldown of your Shock and Wind Shear spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=16116

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    - Storm, Earth and Fire (Rank 1)
      Reduces the cooldown of your Chain Lightning spell by .75 sec, your Earthbind Totem also has a 33% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 20%.
      https://www.wowhead.com/wotlk/spell=51483

    - Storm, Earth and Fire (Rank 2)
      Reduces the cooldown of your Chain Lightning spell by 1.5 sec, your Earthbind Totem also has a 66% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 40%.
      https://www.wowhead.com/wotlk/spell=51485

    - Storm, Earth and Fire (Rank 3)
      Reduces the cooldown of your Chain Lightning spell by 2.5 sec, your Earthbind Totem also has a 100% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 60%.
      https://www.wowhead.com/wotlk/spell=51486

    - Glyph of Shocking
      Reduces your global cooldown when casting your shock spells by 0.5 sec.
      https://www.wowhead.com/wotlk/spell=55442

    --]]

    [8042] = { duration = 6, class = "SHAMAN", adjust = { Elemental = -1, Enhancement = -1 } }, -- Earth Shock (Rank 1)
        [8044] = { parent = 8042 }, -- Earth Shock (Rank 2)
        [8045] = { parent = 8042 }, -- Earth Shock (Rank 3)
        [8046] = { parent = 8042 }, -- Earth Shock (Rank 4)
        [10412] = { parent = 8042 }, -- Earth Shock (Rank 5)
        [10413] = { parent = 8042 }, -- Earth Shock (Rank 6)
        [10414] = { parent = 8042 }, -- Earth Shock (Rank 7)
        [25454] = { parent = 8042 }, -- Earth Shock (Rank 8)
        [49230] = { parent = 8042 }, -- Earth Shock (Rank 9)
        [49231] = { parent = 8042 }, -- Earth Shock (Rank 10)

    --[[ Flame Shock Modifiers

    - Reverberation (Rank 1)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.2 sec.
      https://www.wowhead.com/wotlk/spell=16040

    - Reverberation (Rank 2)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.4 sec.
      https://www.wowhead.com/wotlk/spell=16113

    - Reverberation (Rank 3)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.6 sec.
      https://www.wowhead.com/wotlk/spell=16114

    - Reverberation (Rank 4)
      Reduces the cooldown of your Shock and Wind Shear spells by 0.8 sec.
      https://www.wowhead.com/wotlk/spell=16115

    - Reverberation (Rank 5)
      Reduces the cooldown of your Shock and Wind Shear spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=16116

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    - Storm, Earth and Fire (Rank 1)
      Reduces the cooldown of your Chain Lightning spell by .75 sec, your Earthbind Totem also has a 33% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 20%.
      https://www.wowhead.com/wotlk/spell=51483

    - Storm, Earth and Fire (Rank 2)
      Reduces the cooldown of your Chain Lightning spell by 1.5 sec, your Earthbind Totem also has a 66% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 40%.
      https://www.wowhead.com/wotlk/spell=51485

    - Storm, Earth and Fire (Rank 3)
      Reduces the cooldown of your Chain Lightning spell by 2.5 sec, your Earthbind Totem also has a 100% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 60%.
      https://www.wowhead.com/wotlk/spell=51486

    - Glyph of Shocking
      Reduces your global cooldown when casting your shock spells by 0.5 sec.
      https://www.wowhead.com/wotlk/spell=55442

    - Booming Echoes (Rank 1)
      Reduces the cooldown of your Flame Shock and Frost Shock spells by an additional 1 sec., and increases the direct damage done by your Flame Shock and Frost Shock spells by an additional 10%.
      https://www.wowhead.com/wotlk/spell=63370

    - Booming Echoes (Rank 2)
      Reduces the cooldown of your Flame Shock and Frost Shock spells by an additional 2 sec., and increases the direct damage done by your Flame Shock and Frost Shock spells by an additional 20%.
      https://www.wowhead.com/wotlk/spell=63372

    --]]

    [8050] = { duration = 6, class = "SHAMAN", adjust = { Elemental = -3, Enhancement = -1 } }, -- Flame Shock (Rank 1)
        [8052] = { parent = 8050 }, -- Flame Shock (Rank 2)
        [8053] = { parent = 8050 }, -- Flame Shock (Rank 3)
        [10447] = { parent = 8050 }, -- Flame Shock (Rank 4)
        [10448] = { parent = 8050 }, -- Flame Shock (Rank 5)
        [29228] = { parent = 8050 }, -- Flame Shock (Rank 6)
        [25457] = { parent = 8050 }, -- Flame Shock (Rank 7)
        [49232] = { parent = 8050 }, -- Flame Shock (Rank 8)
        [49233] = { parent = 8050 }, -- Flame Shock (Rank 9)

    --[[ Frost Shock Modifiers

    - Reverberation (Rank 1)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.2 sec.
      https://www.wowhead.com/wotlk/spell=16040

    - Reverberation (Rank 2)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.4 sec.
      https://www.wowhead.com/wotlk/spell=16113

    - Reverberation (Rank 3)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.6 sec.
      https://www.wowhead.com/wotlk/spell=16114

    - Reverberation (Rank 4)
      Reduces the cooldown of your Shock and Wind Shear spells by 0.8 sec.
      https://www.wowhead.com/wotlk/spell=16115

    - Reverberation (Rank 5)
      Reduces the cooldown of your Shock and Wind Shear spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=16116

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    - Glyph of Shocking
      Reduces your global cooldown when casting your shock spells by 0.5 sec.
      https://www.wowhead.com/wotlk/spell=55442

    - Booming Echoes (Rank 1)
      Reduces the cooldown of your Flame Shock and Frost Shock spells by an additional 1 sec., and increases the direct damage done by your Flame Shock and Frost Shock spells by an additional 10%.
      https://www.wowhead.com/wotlk/spell=63370

    - Booming Echoes (Rank 2)
      Reduces the cooldown of your Flame Shock and Frost Shock spells by an additional 2 sec., and increases the direct damage done by your Flame Shock and Frost Shock spells by an additional 20%.
      https://www.wowhead.com/wotlk/spell=63372

    --]]

    [8056] = { duration = 6, class = "SHAMAN", adjust = { Elemental = -3, Enhancement = -1 } }, -- Frost Shock (Rank 1)
        [8058] = { parent = 8056 }, -- Frost Shock (Rank 2)
        [10472] = { parent = 8056 }, -- Frost Shock (Rank 3)
        [10473] = { parent = 8056 }, -- Frost Shock (Rank 4)
        [25464] = { parent = 8056 }, -- Frost Shock (Rank 5)
        [49235] = { parent = 8056 }, -- Frost Shock (Rank 6)
        [49236] = { parent = 8056 }, -- Frost Shock (Rank 7)

    --[[ Grounding Totem Modifiers

    - Guardian Totems (Rank 1)
      Increases the amount of armor increased by your Stoneskin Totem by 10% and reduces the cooldown of your Grounding Totem by 1 sec.
      https://www.wowhead.com/wotlk/spell=16258

    - Guardian Totems (Rank 2)
      Increases the amount of armor increased by your Stoneskin Totem by 20% and reduces the cooldown of your Grounding Totem by 2 sec.
      https://www.wowhead.com/wotlk/spell=16293

    - Improved Grounding Totem
      Reduces the cooldown of your Grounding Totem ability by 1.5 sec.
      https://www.wowhead.com/wotlk/spell=44299

    --]]

    [8177] = { duration = 15, class = "SHAMAN", adjust = -2 }, -- Grounding Totem

    --[[ Elemental Mastery Modifiers

    - Glyph of Elemental Mastery
      Reduces the cooldown of your Elemental Mastery ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=55452

    --]]

    [16166] = { duration = 180, class = "SHAMAN" }, -- Elemental Mastery

    --[[ Nature's Swiftness Modifiers

    - Improved Nature's Swiftness
      Reduces the cooldown on your Nature's Swiftness ability by 24 sec.
      https://www.wowhead.com/wotlk/spell=37211

    - Nature's Swiftness Cooldown Reduction
      Reduces the cooldown of your Nature's Swiftness ability by 24 sec.
      https://www.wowhead.com/wotlk/spell=38466

    - Nature's Swiftness Cooldown Reduction
      Reduces the cooldown on your Nature's Swiftness ability by 24 sec.
      https://www.wowhead.com/wotlk/spell=38499

    - Nature's Swiftness Cooldown Reduction (Shaman)
      Reduces the cooldown of your Nature's Swiftness ability by 24 sec.
      https://www.wowhead.com/wotlk/spell=48109

    --]]

    [16188] = { duration = 180, class = "SHAMAN" }, -- Nature's Swiftness

    [16190] = { duration = 300, class = "SHAMAN" }, -- Mana Tide Totem

    --[[ Stormstrike Modifiers

    - Shaman Stormstrike Cooldown Reduction (Rank 1)
      Reduces the cooldown of your Stormstrike ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=33018

    --]]

    [17364] = { duration = 8, class = "SHAMAN", adjust = -2 }, -- Stormstrike

    --[[ Reincarnation Modifiers

    - Improved Reincarnation (Rank 1)
      Reduces the cooldown of your Reincarnation spell by 7 min and increases the amount of health and mana recovered when reincarnating by an additional 10%.
      https://www.wowhead.com/wotlk/spell=16184

    - Improved Reincarnation (Rank 2)
      Reduces the cooldown of your Reincarnation spell by 15 min and increases the amount of health and mana recovered when reincarnating by an additional 20%.
      https://www.wowhead.com/wotlk/spell=16209

    - Reduced Reincarnation Cooldown
      Reduces the cooldown of Reincarnation by 5 minutes.
      https://www.wowhead.com/wotlk/spell=27797

    --]]

    [20608] = { duration = 1800, class = "SHAMAN" }, -- Reincarnation

    [30823] = { duration = 60, class = "SHAMAN" }, -- Shamanistic Rage

    [32182] = { duration = 300, class = "SHAMAN" }, -- Heroism

    --[[ Thunderstorm Modifiers

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    - Glyph of Thunder
      Reduces the cooldown on Thunderstorm by 10 sec.
      https://www.wowhead.com/wotlk/spell=63270

    - Glyph of Thunder
      Reduces the cooldown on Thunderstorm by 10 sec.
      https://www.wowhead.com/wotlk/spell=63902

    --]]

    [51490] = { duration = 45, class = "SHAMAN", adjust = -10 }, -- Thunderstorm (Rank 1)
        [59156] = { parent = 51490 }, -- Thunderstorm (Rank 2)
        [59158] = { parent = 51490 }, -- Thunderstorm (Rank 3)
        [59159] = { parent = 51490 }, -- Thunderstorm (Rank 4)

    --[[ Lava Burst Modifiers

    - Elemental Mastery
      When activated, your next Lightning Bolt, Chain Lightning or Lava Burst spell becomes an instant cast spell. In addition, you gain 15% spell haste for 15 sec. Elemental Mastery shares a cooldown with Nature's Swiftness.
      https://www.wowhead.com/wotlk/spell=16166

    --]]

    [51505] = { duration = 8, class = "SHAMAN" }, -- Lava Burst (Rank 1)
        [60043] = { parent = 51505 }, -- Lava Burst (Rank 2)

    --[[ Hex Modifiers

    - Nature's Swiftness
      When activated, your next Nature spell with a base casting time less than 10 sec. becomes an instant cast spell. Nature's Swiftness shares a cooldown with Elemental Mastery.
      https://www.wowhead.com/wotlk/spell=16188

    --]]

    [51514] = { duration = 45, class = "SHAMAN" }, -- Hex

    [51533] = { duration = 180, class = "SHAMAN" }, -- Feral Spirit

    [55198] = { duration = 180, class = "SHAMAN" }, -- Tidal Force

    --[[ Wind Shear Modifiers

    - Reverberation (Rank 1)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.2 sec.
      https://www.wowhead.com/wotlk/spell=16040

    - Reverberation (Rank 2)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.4 sec.
      https://www.wowhead.com/wotlk/spell=16113

    - Reverberation (Rank 3)
      Reduces the cooldown of your Shock spells and Wind Shear by 0.6 sec.
      https://www.wowhead.com/wotlk/spell=16114

    - Reverberation (Rank 4)
      Reduces the cooldown of your Shock and Wind Shear spells by 0.8 sec.
      https://www.wowhead.com/wotlk/spell=16115

    - Reverberation (Rank 5)
      Reduces the cooldown of your Shock and Wind Shear spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=16116

    - Storm, Earth and Fire (Rank 1)
      Reduces the cooldown of your Chain Lightning spell by .75 sec, your Earthbind Totem also has a 33% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 20%.
      https://www.wowhead.com/wotlk/spell=51483

    - Storm, Earth and Fire (Rank 2)
      Reduces the cooldown of your Chain Lightning spell by 1.5 sec, your Earthbind Totem also has a 66% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 40%.
      https://www.wowhead.com/wotlk/spell=51485

    - Storm, Earth and Fire (Rank 3)
      Reduces the cooldown of your Chain Lightning spell by 2.5 sec, your Earthbind Totem also has a 100% chance to root targets for 5 sec when cast and the periodic damage done by your Flame Shock is increased by 60%.
      https://www.wowhead.com/wotlk/spell=51486

    - Glyph of Shocking
      Reduces your global cooldown when casting your shock spells by 0.5 sec.
      https://www.wowhead.com/wotlk/spell=55442

    --]]

    [57994] = { duration = 6, class = "SHAMAN", default = true, adjust = { Elemental = -1, Enhancement = -1 } }, -- Wind Shear

    [60103] = { duration = 6, class = "SHAMAN" }, -- Lava Lash

    --[[ Riptide Modifiers

    - Item - Shaman T8 Restoration 2P Bonus
      Reduces the cooldown on Riptide by 1 sec.
      https://www.wowhead.com/wotlk/spell=64921

    --]]

    [61295] = { duration = 6, class = "SHAMAN" }, -- Riptide (Rank 1)
        [61299] = { parent = 61295 }, -- Riptide (Rank 2)
        [61300] = { parent = 61295 }, -- Riptide (Rank 3)
        [61301] = { parent = 61295 }, -- Riptide (Rank 4)

    -- Paladin

    --[[ Divine Protection Modifiers

    - Sacred Duty (Rank 1)
      Increases your total Stamina by 2%, reduces the cooldown of your Divine Shield and Divine Protection spells by 30 sec.
      https://www.wowhead.com/wotlk/spell=31848

    - Sacred Duty (Rank 2)
      Increases your total Stamina by 4%, reduces the cooldown of your Divine Shield and Divine Protection spells by 60 sec.
      https://www.wowhead.com/wotlk/spell=31849

    - Item - Paladin T9 Tank 4P Bonus
      Decreases the cooldown on your Divine Protection ability and reduces the duration of Forbearance by 30 sec.
      https://www.wowhead.com/wotlk/spell=67187

    --]]

    [498] = { duration = 180, class = "PALADIN", adjust = { Protection = -60 } }, -- Divine Protection

    --[[ Lay on Hands Modifiers

    - Improved Lay on Hands (Rank 1)
      Grants the target of your Lay on Hands spell 10% reduced physical damage taken for 15 sec. In addition, the cooldown for your Lay on Hands spell is reduced by 2 min.
      https://www.wowhead.com/wotlk/spell=20234

    - Improved Lay on Hands (Rank 2)
      Grants the target of your Lay on Hands spell 20% reduced physical damage taken for 15 sec. In addition, the cooldown for your Lay on Hands spell is reduced by 4 min.
      https://www.wowhead.com/wotlk/spell=20235

    - Lay Hands
      Reduces cooldown on your Lay on Hands by 4 min.
      https://www.wowhead.com/wotlk/spell=28774

    - Glyph of Lay on Hands
      Reduces the cooldown of your Lay on Hands spell by 5 min.
      https://www.wowhead.com/wotlk/spell=57955

    --]]

    [633] = { duration = 1200, class = "PALADIN", adjust = -840 }, -- Lay on Hands (Rank 1)
        [2800] = { parent = 633 }, -- Lay on Hands (Rank 2)
        [10310] = { parent = 633 }, -- Lay on Hands (Rank 3)
        [27154] = { parent = 633 }, -- Lay on Hands (Rank 4)
        [48788] = { parent = 633 }, -- Lay on Hands (Rank 5)

    --[[ Divine Shield Modifiers

    - Sacred Duty (Rank 1)
      Increases your total Stamina by 2%, reduces the cooldown of your Divine Shield and Divine Protection spells by 30 sec.
      https://www.wowhead.com/wotlk/spell=31848

    - Sacred Duty (Rank 2)
      Increases your total Stamina by 4%, reduces the cooldown of your Divine Shield and Divine Protection spells by 60 sec.
      https://www.wowhead.com/wotlk/spell=31849

    --]]

    [642] = { duration = 300, class = "PALADIN", adjust = { Protection = -60 } }, -- Divine Shield

    --[[ Hammer of Justice Modifiers

    - Improved Hammer of Justice (Rank 1)
      Decreases the cooldown of your Hammer of Justice spell by 10 sec.
      https://www.wowhead.com/wotlk/spell=20487

    - Improved Hammer of Justice (Rank 2)
      Decreases the cooldown of your Hammer of Justice spell by 20 sec.
      https://www.wowhead.com/wotlk/spell=20488

    - Hammer of Justice Cooldown Reduction
      Reduces the cooldown of your Hammer of Justice by 10 sec.
      https://www.wowhead.com/wotlk/spell=23302

    - Judgements of the Just (Rank 1)
      Reduces the cooldown of your Hammer of Justice by 5 sec, increases the duration of your Seal of Justice effect by 0.5 sec and your Judgement spells also reduce the melee attack speed of the target by 10%.
      https://www.wowhead.com/wotlk/spell=53695

    - Judgements of the Just (Rank 2)
      Reduces the cooldown of your Hammer of Justice by 10 sec, increases the duration of your Seal of Justice effect by 1 sec and your Judgement spells also reduce the melee attack speed of the target by 20%.
      https://www.wowhead.com/wotlk/spell=53696

    --]]

    [853] = { duration = 60, class = "PALADIN", adjust = { Protection = -30, default = -20 } }, -- Hammer of Justice (Rank 1)
        [5588] = { parent = 853 }, -- Hammer of Justice (Rank 2)
        [5589] = { parent = 853 }, -- Hammer of Justice (Rank 3)
        [10308] = { parent = 853 }, -- Hammer of Justice (Rank 4)

    --[[ Exorcism Modifiers

    - Purifying Power (Rank 1)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 5% and reduces the cooldown of your Exorcism and Holy Wrath spells by 17%.
      https://www.wowhead.com/wotlk/spell=31825

    - Purifying Power (Rank 2)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 10% and reduces the cooldown of your Exorcism and Holy Wrath spells by 33%.
      https://www.wowhead.com/wotlk/spell=31826

    --]]

    [879] = { duration = 15, class = "PALADIN", adjust = -4.95 }, -- Exorcism (Rank 1)
        [5614] = { parent = 879 }, -- Exorcism (Rank 2)
        [5615] = { parent = 879 }, -- Exorcism (Rank 3)
        [10312] = { parent = 879 }, -- Exorcism (Rank 4)
        [10313] = { parent = 879 }, -- Exorcism (Rank 5)
        [10314] = { parent = 879 }, -- Exorcism (Rank 6)
        [27138] = { parent = 879 }, -- Exorcism (Rank 7)
        [48800] = { parent = 879 }, -- Exorcism (Rank 8)
        [48801] = { parent = 879 }, -- Exorcism (Rank 9)

    --[[ Hand of Protection Modifiers

    - Guardian's Favor (Rank 1)
      Reduces the cooldown of your Hand of Protection by 60 sec and increases the duration of your Hand of Freedom by 2 sec.
      https://www.wowhead.com/wotlk/spell=20174

    - Guardian's Favor (Rank 2)
      Reduces the cooldown of your Hand of Protection by 2 min and increases the duration of your Hand of Freedom by 4 sec.
      https://www.wowhead.com/wotlk/spell=20175

    --]]

    [1022] = { duration = 300, class = "PALADIN", adjust = -120 }, -- Hand of Protection (Rank 1)
        [5599] = { parent = 1022 }, -- Hand of Protection (Rank 2)
        [10278] = { parent = 1022 }, -- Hand of Protection (Rank 3)

    [1038] = { duration = 120, class = "PALADIN" }, -- Hand of Salvation

    --[[ Hand of Freedom Modifiers

    - Guardian's Favor (Rank 1)
      Reduces the cooldown of your Hand of Protection by 60 sec and increases the duration of your Hand of Freedom by 2 sec.
      https://www.wowhead.com/wotlk/spell=20174

    - Guardian's Favor (Rank 2)
      Reduces the cooldown of your Hand of Protection by 2 min and increases the duration of your Hand of Freedom by 4 sec.
      https://www.wowhead.com/wotlk/spell=20175

    --]]

    [1044] = { duration = 25, class = "PALADIN" }, -- Hand of Freedom

    --[[ Holy Wrath Modifiers

    - Purifying Power (Rank 1)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 5% and reduces the cooldown of your Exorcism and Holy Wrath spells by 17%.
      https://www.wowhead.com/wotlk/spell=31825

    - Purifying Power (Rank 2)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 10% and reduces the cooldown of your Exorcism and Holy Wrath spells by 33%.
      https://www.wowhead.com/wotlk/spell=31826

    - Glyph of Holy Wrath
      Reduces the cooldown of your Holy Wrath spell by 15 sec.
      https://www.wowhead.com/wotlk/spell=56420

    - Glyph of Holy Wrath
      Reduces the cooldown of your Holy Wrath spell by 15 sec.
      https://www.wowhead.com/wotlk/spell=59427

    --]]

    [2812] = { duration = 30, class = "PALADIN" }, -- Holy Wrath (Rank 1)
        [10318] = { parent = 2812 }, -- Holy Wrath (Rank 2)
        [27139] = { parent = 2812 }, -- Holy Wrath (Rank 3)
        [48816] = { parent = 2812 }, -- Holy Wrath (Rank 4)
        [48817] = { parent = 2812 }, -- Holy Wrath (Rank 5)

    [6940] = { duration = 120, class = "PALADIN" }, -- Hand of Sacrifice

    [19752] = { duration = 600, class = "PALADIN" }, -- Divine Intervention

    [20066] = { duration = 60, class = "PALADIN" }, -- Repentance

    --[[ Consecration Modifiers

    - Purifying Power (Rank 1)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 5% and reduces the cooldown of your Exorcism and Holy Wrath spells by 17%.
      https://www.wowhead.com/wotlk/spell=31825

    - Purifying Power (Rank 2)
      Reduces the mana cost of your Cleanse, Purify and Consecration spells by 10% and reduces the cooldown of your Exorcism and Holy Wrath spells by 33%.
      https://www.wowhead.com/wotlk/spell=31826

    - Glyph of Consecration
      Increases the duration and cooldown of Consecration by 2 sec.
      https://www.wowhead.com/wotlk/spell=54928

    - Glyph of Consecration
      Increases the duration and cooldown of Consecration by 2 sec.
      https://www.wowhead.com/wotlk/spell=55114

    --]]

    [26573] = { duration = 8, class = "PALADIN" }, -- Consecration (Rank 1)
        [20116] = { parent = 26573 }, -- Consecration (Rank 2)
        [20922] = { parent = 26573 }, -- Consecration (Rank 3)
        [20923] = { parent = 26573 }, -- Consecration (Rank 4)
        [20924] = { parent = 26573 }, -- Consecration (Rank 5)
        [27173] = { parent = 26573 }, -- Consecration (Rank 6)
        [48818] = { parent = 26573 }, -- Consecration (Rank 7)
        [48819] = { parent = 26573 }, -- Consecration (Rank 8)

    --[[ Divine Favor Modifiers

    - Divine Favor Cooldown
      Reduces the cooldown on your Divine Favor ability by 15 sec.
      https://www.wowhead.com/wotlk/spell=37183

    --]]

    [20216] = { duration = 120, class = "PALADIN" }, -- Divine Favor

    --[[ Judgement of Light Modifiers

    - Improved Judgements (Rank 1)
      Decreases the cooldown of your Judgement spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=25956

    - Improved Judgements (Rank 2)
      Decreases the cooldown of your Judgement spells by 2 sec.
      https://www.wowhead.com/wotlk/spell=25957

    - Judgment Cooldown Reduction
      Reduces the cooldown of your Judgment of Light, Judgment of Wisdom, and Judgment of Justice by 1 second.
      https://www.wowhead.com/wotlk/spell=60153

    - Judgement Cooldown Reduction
      Reduces the cooldown of your Judgements by 1 sec.
      https://www.wowhead.com/wotlk/spell=61776

    - Glyph of Turn Evil
      Reduces the casting time of your Turn Evil spell by 100%, but increases the cooldown by 8 sec.
      https://www.wowhead.com/wotlk/spell=55117

    --]]

    [20271] = { duration = 10, class = "PALADIN", adjust = { Retribution = -3, default = -1 } }, -- Judgement of Light

    --[[ Holy Shock Modifiers

    - Glyph of Holy Shock
      Reduces the cooldown of Holy Shock by 1 sec.
      https://www.wowhead.com/wotlk/spell=63224

    - Glyph of Guardian Spirit
      If your Guardian Spirit lasts its entire duration without being triggered, the cooldown is reset to 1 min.
      https://www.wowhead.com/wotlk/spell=63231

    - Glyph of Holy Shock
      Reduces the cooldown of Holy Shock by 1 sec.
      https://www.wowhead.com/wotlk/spell=63870

    --]]

    [20473] = { duration = 6, class = "PALADIN" }, -- Holy Shock (Rank 1)
        [20929] = { parent = 20473 }, -- Holy Shock (Rank 2)
        [20930] = { parent = 20473 }, -- Holy Shock (Rank 3)
        [27174] = { parent = 20473 }, -- Holy Shock (Rank 4)
        [33072] = { parent = 20473 }, -- Holy Shock (Rank 5)
        [48824] = { parent = 20473 }, -- Holy Shock (Rank 6)
        [48825] = { parent = 20473 }, -- Holy Shock (Rank 7)

    [20925] = { duration = 8, class = "PALADIN" }, -- Holy Shield (Rank 1)
        [20927] = { parent = 20925 }, -- Holy Shield (Rank 2)
        [20928] = { parent = 20925 }, -- Holy Shield (Rank 3)
        [27179] = { parent = 20925 }, -- Holy Shield (Rank 4)
        [48951] = { parent = 20925 }, -- Holy Shield (Rank 5)
        [48952] = { parent = 20925 }, -- Holy Shield (Rank 6)

    --[[ Hammer of Wrath Modifiers

    - Sanctified Wrath (Rank 1)
      Increases the critical strike chance of Hammer of Wrath by 25%, reduces the cooldown of Avenging Wrath by 30 secs and while affected by Avenging Wrath 25% of all damage caused bypasses damage reduction effects.
      https://www.wowhead.com/wotlk/spell=53375

    - Sanctified Wrath (Rank 2)
      Increases the critical strike chance of Hammer of Wrath by 50%, reduces the cooldown of Avenging Wrath by 60 secs and while affected by Avenging Wrath 50% of all damage caused bypasses damage reduction effects.
      https://www.wowhead.com/wotlk/spell=53376

    --]]

    [24275] = { duration = 6, class = "PALADIN" }, -- Hammer of Wrath (Rank 1)
        [24274] = { parent = 24275 }, -- Hammer of Wrath (Rank 2)
        [24239] = { parent = 24275 }, -- Hammer of Wrath (Rank 3)
        [27180] = { parent = 24275 }, -- Hammer of Wrath (Rank 4)
        [48805] = { parent = 24275 }, -- Hammer of Wrath (Rank 5)
        [48806] = { parent = 24275 }, -- Hammer of Wrath (Rank 6)

    --[[ Righteous Defense Modifiers

    - Reduced Righteous Defense Cooldown
      Reduces the cooldown on your Righteous Defense ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=37181

    --]]

    [31789] = { duration = 8, class = "PALADIN" }, -- Righteous Defense

    [31821] = { duration = 120, class = "PALADIN" }, -- Aura Mastery

    [31842] = { duration = 180, class = "PALADIN" }, -- Divine Illumination

    --[[ Avenging Wrath Modifiers

    - Sanctified Wrath (Rank 1)
      Increases the critical strike chance of Hammer of Wrath by 25%, reduces the cooldown of Avenging Wrath by 30 secs and while affected by Avenging Wrath 25% of all damage caused bypasses damage reduction effects.
      https://www.wowhead.com/wotlk/spell=53375

    - Sanctified Wrath (Rank 2)
      Increases the critical strike chance of Hammer of Wrath by 50%, reduces the cooldown of Avenging Wrath by 60 secs and while affected by Avenging Wrath 50% of all damage caused bypasses damage reduction effects.
      https://www.wowhead.com/wotlk/spell=53376

    - Glyph of Avenging Wrath
      Reduces the cooldown of your Hammer of Wrath spell by 50% while Avenging Wrath is active.
      https://www.wowhead.com/wotlk/spell=54938

    --]]

    -- todo: Glyph of Avenging Wrath

    [31884] = { duration = 180, class = "PALADIN", adjust = { Retribution = -60 } }, -- Avenging Wrath

    [31935] = { duration = 30, class = "PALADIN" }, -- Avenger's Shield (Rank 1)
        [32699] = { parent = 31935 }, -- Avenger's Shield (Rank 2)
        [32700] = { parent = 31935 }, -- Avenger's Shield (Rank 3)
        [48826] = { parent = 31935 }, -- Avenger's Shield (Rank 4)
        [48827] = { parent = 31935 }, -- Avenger's Shield (Rank 5)

    [35395] = { duration = 4, class = "PALADIN" }, -- Crusader Strike

    [53385] = { duration = 10, class = "PALADIN" }, -- Divine Storm

    --[[ Judgement of Justice Modifiers

    - Improved Judgements (Rank 1)
      Decreases the cooldown of your Judgement spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=25956

    - Improved Judgements (Rank 2)
      Decreases the cooldown of your Judgement spells by 2 sec.
      https://www.wowhead.com/wotlk/spell=25957

    - Judgment Cooldown Reduction
      Reduces the cooldown of your Judgment of Light, Judgment of Wisdom, and Judgment of Justice by 1 second.
      https://www.wowhead.com/wotlk/spell=60153

    - Judgement Cooldown Reduction
      Reduces the cooldown of your Judgements by 1 sec.
      https://www.wowhead.com/wotlk/spell=61776

    --]]

    [53407] = { duration = 10, class = "PALADIN", adjust = { Retribution = -3, default = -1 } }, -- Judgement of Justice

    --[[ Judgement of Wisdom Modifiers

    - Improved Judgements (Rank 1)
      Decreases the cooldown of your Judgement spells by 1 sec.
      https://www.wowhead.com/wotlk/spell=25956

    - Improved Judgements (Rank 2)
      Decreases the cooldown of your Judgement spells by 2 sec.
      https://www.wowhead.com/wotlk/spell=25957

    - Judgment Cooldown Reduction
      Reduces the cooldown of your Judgment of Light, Judgment of Wisdom, and Judgment of Justice by 1 second.
      https://www.wowhead.com/wotlk/spell=60153

    - Judgement Cooldown Reduction
      Reduces the cooldown of your Judgements by 1 sec.
      https://www.wowhead.com/wotlk/spell=61776

    --]]

    [53408] = { duration = 10, class = "PALADIN", adjust = { Retribution = -3, default = -1 } }, -- Judgement of Wisdom

    --[[ Hammer of the Righteous Modifiers

    - Item - Paladin T9 Tank 2P Bonus
      Decreases the cooldown on your Hand of Reckoning ability by 2 sec and increases the damage done by your Hammer of the Righteous ability by 5%.
      https://www.wowhead.com/wotlk/spell=67186

    --]]

    [53595] = { duration = 6, class = "PALADIN" }, -- Hammer of the Righteous

    [53600] = { duration = 6, class = "PALADIN" }, -- Shield of Righteousness (Rank 1)
        [61411] = { parent = 53600 }, -- Shield of Righteousness (Rank 2)

    [54428] = { duration = 60, class = "PALADIN" }, -- Divine Plea

    --[[ Hand of Reckoning Modifiers

    - Item - Paladin T9 Tank 2P Bonus
      Decreases the cooldown on your Hand of Reckoning ability by 2 sec and increases the damage done by your Hammer of the Righteous ability by 5%.
      https://www.wowhead.com/wotlk/spell=67186

    --]]

    [62124] = { duration = 8, class = "PALADIN" }, -- Hand of Reckoning

    [64205] = { duration = 120, class = "PALADIN" }, -- Divine Sacrifice

    -- Hunter

    --[[ Disengage Modifiers

    - Survival Tactics (Rank 1)
      Reduces the chance your Feign Death ability and all trap spells will be resisted by 2%, and reduces the cooldown of your Disengage ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=19286

    - Survival Tactics (Rank 2)
      Reduces the chance your Feign Death ability and all trap spells will be resisted by 4%, and reduces the cooldown of your Disengage ability by 4 sec.
      https://www.wowhead.com/wotlk/spell=19287

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Glyph of Disengage
      Decreases the cooldown of Disengage by 5 sec.
      https://www.wowhead.com/wotlk/spell=56844

    - Glyph of Disenegage
      Decreases the cooldown of Disengage by 5 sec.
      https://www.wowhead.com/wotlk/spell=56876

    --]]

    [781] = { duration = 25, class = "HUNTER", adjust = { ["Beast Mastery"] = 0, default = -4} }, -- Disengage

    [1495] = { duration = 5, class = "HUNTER" }, -- Mongoose Bite (Rank 1)
        [14269] = { parent = 1495 }, -- Mongoose Bite (Rank 2)
        [14270] = { parent = 1495 }, -- Mongoose Bite (Rank 3)
        [14271] = { parent = 1495 }, -- Mongoose Bite (Rank 4)
        [36916] = { parent = 1495 }, -- Mongoose Bite (Rank 5)
        [53339] = { parent = 1495 }, -- Mongoose Bite (Rank 6)

    --[[ Freezing Trap Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    --]]

    [1499] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Freezing Trap (Rank 1)
        [14310] = { parent = 1499 }, -- Freezing Trap (Rank 2)
        [14311] = { parent = 1499 }, -- Freezing Trap (Rank 3)

    [1513] = { duration = 30, class = "HUNTER" }, -- Scare Beast (Rank 1)
        [14326] = { parent = 1513 }, -- Scare Beast (Rank 2)
        [14327] = { parent = 1513 }, -- Scare Beast (Rank 3)

    [1543] = { duration = 20, class = "HUNTER" }, -- Flare

    --[[ Multi-Shot Modifiers

    - Black Arrow (Rank 1)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 157 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=3674

    - Improved Multi-Shot
      Reduces the cooldown of your Multi-Shot ability by 1 sec.
      https://www.wowhead.com/wotlk/spell=44292

    - Glyph of Multi-Shot
      Decreases the cooldown of Multi-Shot by 1 sec.
      https://www.wowhead.com/wotlk/spell=56836

    - Black Arrow (Rank 2)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 188 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=63668

    - Black Arrow (Rank 3)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 241 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=63669

    - Black Arrow (Rank 4)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 296 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=63670

    - Black Arrow (Rank 5)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 448 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=63671

    - Black Arrow (Rank 6)
      Fires a Black Arrow at the target, increasing all damage done by you to the target by 6% and dealing (Ranged attack power * 0.1 + 553 * 5) Shadow damage over 15 sec. Black Arrow shares a cooldown with Trap spells.
      https://www.wowhead.com/wotlk/spell=63672

    --]]

    [2643] = { duration = 10, class = "HUNTER" }, -- Multi-Shot (Rank 1)
        [14288] = { parent = 2643 }, -- Multi-Shot (Rank 2)
        [14289] = { parent = 2643 }, -- Multi-Shot (Rank 3)
        [14290] = { parent = 2643 }, -- Multi-Shot (Rank 4)
        [25294] = { parent = 2643 }, -- Multi-Shot (Rank 5)
        [27021] = { parent = 2643 }, -- Multi-Shot (Rank 6)
        [49047] = { parent = 2643 }, -- Multi-Shot (Rank 7)
        [49048] = { parent = 2643 }, -- Multi-Shot (Rank 8)

    --[[ Raptor Strike Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    --]]

    [2973] = { duration = 6, class = "HUNTER" }, -- Raptor Strike (Rank 1)
        [14260] = { parent = 2973 }, -- Raptor Strike (Rank 2)
        [14261] = { parent = 2973 }, -- Raptor Strike (Rank 3)
        [14262] = { parent = 2973 }, -- Raptor Strike (Rank 4)
        [14263] = { parent = 2973 }, -- Raptor Strike (Rank 5)
        [14264] = { parent = 2973 }, -- Raptor Strike (Rank 6)
        [14265] = { parent = 2973 }, -- Raptor Strike (Rank 7)
        [14266] = { parent = 2973 }, -- Raptor Strike (Rank 8)
        [27014] = { parent = 2973 }, -- Raptor Strike (Rank 9)
        [48995] = { parent = 2973 }, -- Raptor Strike (Rank 10)
        [48996] = { parent = 2973 }, -- Raptor Strike (Rank 11)

    [3034] = { duration = 15, class = "HUNTER" }, -- Viper Sting

    --[[ Arcane Shot Modifiers

    - Lock and Load
      You have a chance when you trap a target with Freezing Trap, Freezing Arrow or Frost Trap and a chance when you deal periodic damage with your Immolation Trap, Explosive Trap or Black Arrow to cause your next 2 Arcane Shot or Explosive Shot spells to trigger no cooldown, cost no mana and consume no ammo. This effect has a 22 sec cooldown.
      https://www.wowhead.com/wotlk/spell=56453

    --]]

    [3044] = { duration = 6, class = "HUNTER" }, -- Arcane Shot (Rank 1), cooldown is 0 while Lock and Load buff is active
        [14281] = { parent = 3044 }, -- Arcane Shot (Rank 2)
        [14282] = { parent = 3044 }, -- Arcane Shot (Rank 3)
        [14283] = { parent = 3044 }, -- Arcane Shot (Rank 4)
        [14284] = { parent = 3044 }, -- Arcane Shot (Rank 5)
        [14285] = { parent = 3044 }, -- Arcane Shot (Rank 6)
        [14286] = { parent = 3044 }, -- Arcane Shot (Rank 7)
        [14287] = { parent = 3044 }, -- Arcane Shot (Rank 8)
        [27019] = { parent = 3044 }, -- Arcane Shot (Rank 9)
        [49044] = { parent = 3044 }, -- Arcane Shot (Rank 10)
        [49045] = { parent = 3044 }, -- Arcane Shot (Rank 11)

    --[[ Rapid Fire Modifiers

    - Rapid Killing (Rank 1)
      Reduces the cooldown of your Rapid Fire ability by 1 min. In addition, after killing an opponent that yields experience or honor, your next Aimed Shot, Arcane Shot or Chimera Shot causes 10% additional damage. Lasts 20 sec.
      https://www.wowhead.com/wotlk/spell=34948

    - Rapid Killing (Rank 2)
      Reduces the cooldown of your Rapid Fire ability by 2 min. In addition, after killing an opponent that yields experience or honor, your next Aimed Shot, Arcane Shot or Chimera Shot causes 20% additional damage. Lasts 20 sec.
      https://www.wowhead.com/wotlk/spell=34949

    --]]

    [3045] = { duration = 300, class = "HUNTER", adjust = -120 }, -- Rapid Fire


    [5116] = { duration = 12, class = "HUNTER" }, -- Concussive Shot

    --[[ Feign Death Modifiers

    - Survival Tactics (Rank 1)
      Reduces the chance your Feign Death ability and all trap spells will be resisted by 2%, and reduces the cooldown of your Disengage ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=19286

    - Survival Tactics (Rank 2)
      Reduces the chance your Feign Death ability and all trap spells will be resisted by 4%, and reduces the cooldown of your Disengage ability by 4 sec.
      https://www.wowhead.com/wotlk/spell=19287

    - Glyph of Feign Death
      Reduces the cooldown of your Feign Death spell by 5 sec.
      https://www.wowhead.com/wotlk/spell=57903

    --]]

    [5384] = { duration = 30, class = "HUNTER", adjust = -5 }, -- Feign Death

    [6991] = { duration = 10, class = "HUNTER" }, -- Feed Pet

    --[[ Immolation Trap Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [13795] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Immolation Trap (Rank 1), cooldown incurred when Black Arrow is cast
        [14302] = { parent = 13795 }, -- Immolation Trap (Rank 2)
        [14303] = { parent = 13795 }, -- Immolation Trap (Rank 3)
        [14304] = { parent = 13795 }, -- Immolation Trap (Rank 4)
        [14305] = { parent = 13795 }, -- Immolation Trap (Rank 5)
        [27023] = { parent = 13795 }, -- Immolation Trap (Rank 6)
        [49055] = { parent = 13795 }, -- Immolation Trap (Rank 7)
        [49056] = { parent = 13795 }, -- Immolation Trap (Rank 8)

    --[[ Frost Trap Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [13809] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Frost Trap

    --[[ Explosive Trap Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493


    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [13813] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Explosive Trap (Rank 1), cooldown incurred when Black Arrow is cast
        [14316] = { parent = 13813 }, -- Explosive Trap (Rank 2)
        [14317] = { parent = 13813 }, -- Explosive Trap (Rank 3)
        [27025] = { parent = 13813 }, -- Explosive Trap (Rank 4)
        [49066] = { parent = 13813 }, -- Explosive Trap (Rank 5)
        [49067] = { parent = 13813 }, -- Explosive Trap (Rank 6)

    --[[ Deterrence Modifiers

    - Glyph of Deterrence
      Decreases the cooldown of Deterrence by 10 sec.
      https://www.wowhead.com/wotlk/spell=56850

    - Glyph of Deterrence
      Decreases the cooldown of Deterrence by 10 sec.
      https://www.wowhead.com/wotlk/spell=56875

    --]]

    [19263] = { duration = 90, class = "HUNTER" }, -- Deterrence

    [19306] = { duration = 5, class = "HUNTER" }, -- Counterattack (Rank 1)
        [20909] = { parent = 19306 }, -- Counterattack (Rank 2)
        [20910] = { parent = 19306 }, -- Counterattack (Rank 3)
        [27067] = { parent = 19306 }, -- Counterattack (Rank 4)
        [48998] = { parent = 19306 }, -- Counterattack (Rank 5)
        [48999] = { parent = 19306 }, -- Counterattack (Rank 6)

    --[[ Wyvern Sting Modifiers

    - Glyph of Wyvern Sting
      Decreases the cooldown of your Wyvern Sting by 6 sec.
      https://www.wowhead.com/wotlk/spell=56848

    --]]

    [19386] = { duration = 60, class = "HUNTER" }, -- Wyvern Sting (Rank 1)
        [24132] = { parent = 19386 }, -- Wyvern Sting (Rank 2)
        [24133] = { parent = 19386 }, -- Wyvern Sting (Rank 3)
        [27068] = { parent = 19386 }, -- Wyvern Sting (Rank 4)
        [49011] = { parent = 19386 }, -- Wyvern Sting (Rank 5)
        [49012] = { parent = 19386 }, -- Wyvern Sting (Rank 6)

    --[[ Aimed Shot Modifiers

    - Glyph of Aimed Shot
      Reduces the cooldown of your Aimed Shot ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=56824

    --]]

    [19434] = { duration = 10, class = "HUNTER" }, -- Aimed Shot (Rank 1)
        [20900] = { parent = 19434 }, -- Aimed Shot (Rank 2)
        [20901] = { parent = 19434 }, -- Aimed Shot (Rank 3)
        [20902] = { parent = 19434 }, -- Aimed Shot (Rank 4)
        [20903] = { parent = 19434 }, -- Aimed Shot (Rank 5)
        [20904] = { parent = 19434 }, -- Aimed Shot (Rank 6)
        [27065] = { parent = 19434 }, -- Aimed Shot (Rank 7)
        [49049] = { parent = 19434 }, -- Aimed Shot (Rank 8)
        [49050] = { parent = 19434 }, -- Aimed Shot (Rank 9)

    [19503] = { duration = 30, class = "HUNTER" }, -- Scatter Shot

    --[[ Bestial Wrath Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    - Glyph of Bestial Wrath
      Decreases the cooldown of Bestial Wrath by 20 sec.
      https://www.wowhead.com/wotlk/spell=56830

    --]]

    [19574] = { duration = 120, class = "HUNTER", adjust = -50 }, -- Bestial Wrath

    --[[ Intimidation Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [19577] = { duration = 60, class = "HUNTER", adjust = -18 }, -- Intimidation

    --[[ Tranquilizing Shot Modifiers

    - Tranquilizing Shot Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Tranquilizing Shot by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61255

    --]]

    [19801] = { duration = 8, class = "HUNTER", adjust = -2 }, -- Tranquilizing Shot

    [20736] = { duration = 8, class = "HUNTER" }, -- Distracting Shot

    [23989] = { duration = 180, class = "HUNTER" }, -- Readiness

    --[[ Kill Command Modifiers

    - Catlike Reflexes (Rank 1)
      Increases your chance to dodge by 1% and your pet's chance to dodge by an additional 3%. In addition, reduces the cooldown of your Kill Command ability by 10 sec.
      https://www.wowhead.com/wotlk/spell=34462

    - Catlike Reflexes (Rank 2)
      Increases your chance to dodge by 2% and your pet's chance to dodge by an additional 6%. In addition, reduces the cooldown of your Kill Command ability by 20 sec.
      https://www.wowhead.com/wotlk/spell=34464

    - Catlike Reflexes (Rank 3)
      Increases your chance to dodge by 3% and your pet's chance to dodge by an additional 9%. In addition, reduces the cooldown of your Kill Command ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=34465

    --]]

    [34026] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -30 } }, -- Kill Command

    [34477] = { duration = 30, class = "HUNTER" }, -- Misdirection

    [34490] = { duration = 20, class = "HUNTER", default = true }, -- Silencing Shot

    --[[ Snake Trap Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [34600] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Snake Trap

    --[[ Chimera Shot Modifiers

    - Glyph of Chimera Shot
      Reduces the cooldown of Chimera Shot by 1 sec.
      https://www.wowhead.com/wotlk/spell=63065

    --]]

    [53209] = { duration = 10, class = "HUNTER" }, -- Chimera Shot

    [53271] = { duration = 60, class = "HUNTER" }, -- Master's Call

    --[[ Explosive Shot Modifiers

    - Lock and Load
      You have a chance when you trap a target with Freezing Trap, Freezing Arrow or Frost Trap and a chance when you deal periodic damage with your Immolation Trap, Explosive Trap or Black Arrow to cause your next 2 Arcane Shot or Explosive Shot spells to trigger no cooldown, cost no mana and consume no ammo. This effect has a 22 sec cooldown.
      https://www.wowhead.com/wotlk/spell=56453

    --]]

    [53301] = { duration = 6, class = "HUNTER" }, -- Explosive Shot (Rank 1), cooldown is 0 while Lock and Load buff is active
        [60051] = { parent = 53301 }, -- Explosive Shot (Rank 2)
        [60052] = { parent = 53301 }, -- Explosive Shot (Rank 3)
        [60053] = { parent = 53301 }, -- Explosive Shot (Rank 4)

    --[[ Kill Shot Modifiers

    - Glyph of Kill Shot
      Reduces the cooldown of Kill Shot by 6 sec.
      https://www.wowhead.com/wotlk/spell=63067

    --]]

    [53351] = { duration = 15, class = "HUNTER" }, -- Kill Shot (Rank 1)
        [61005] = { parent = 53351 }, -- Kill Shot (Rank 2)
        [61006] = { parent = 53351 }, -- Kill Shot (Rank 3)

    --[[ Freezing Arrow Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [60192] = { duration = 30, class = "HUNTER", adjust = { Survival = -8, default = -2 } }, -- Freezing Arrow

    [62757] = { duration = 300, class = "HUNTER" }, -- Call Stabled Pet

    --[[ Black Arrow Modifiers

    - Resourcefulness (Rank 1)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 20% and reduces the cooldown of all traps and Black Arrow by 2 sec.
      https://www.wowhead.com/wotlk/spell=34491

    - Resourcefulness (Rank 2)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 40% and reduces the cooldown of all traps and Black Arrow by 4 sec.
      https://www.wowhead.com/wotlk/spell=34492

    - Resourcefulness (Rank 3)
      Reduces the mana cost of all traps, melee abilities and Black Arrow by 60% and reduces the cooldown of all traps and Black Arrow by 6 sec.
      https://www.wowhead.com/wotlk/spell=34493

    - Trap Cooldown Reduction (Rank 5)
      Reduces the cooldown of your Traps by 2 seconds.
      https://www.wowhead.com/wotlk/spell=61256

    --]]

    [63668] = { duration = 30, class = "HUNTER", adjust = -8 }, -- Black Arrow (Rank 2)
        [63669] = { parent = 63668 }, -- Black Arrow (Rank 3)
        [63670] = { parent = 63668 }, -- Black Arrow (Rank 4)
        [63671] = { parent = 63668 }, -- Black Arrow (Rank 5)
        [63672] = { parent = 63668 }, -- Black Arrow (Rank 6)

    -- Hunter Pets

    --[[ Cower Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [1742] = { duration = 45, class = "HUNTER", adjust = { ["Beast Mastery"] = -13.5 } }, -- Cower

    --[[ Growl Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [2649] = { duration = 5, class = "HUNTER", adjust = { ["Beast Mastery"] = -1.5 } }, -- Growl (Rank 1)
        [14916] = { parent = 2649 }, -- Growl (Rank 2)
        [14917] = { parent = 2649 }, -- Growl (Rank 3)
        [14918] = { parent = 2649 }, -- Growl (Rank 4)
        [14919] = { parent = 2649 }, -- Growl (Rank 5)
        [14920] = { parent = 2649 }, -- Growl (Rank 6)
        [14921] = { parent = 2649 }, -- Growl (Rank 7)
        [27047] = { parent = 2649 }, -- Growl (Rank 8)
        [61676] = { parent = 2649 }, -- Growl (Rank 9)

    --[[ Web Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [4167] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Web

    --[[ Dive Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    - Mobility (Rank 1)
      Reduces the cooldown on your pet's Dash ability by 8 sec.
      https://www.wowhead.com/wotlk/spell=53483

    - Mobility (Rank 2)
      Reduces the cooldown on your pet's Dash ability by 16 sec.
      https://www.wowhead.com/wotlk/spell=53485

    - Mobility (Rank 1)
      Reduces the cooldown on your pet's Dive ability by 8 sec.
      https://www.wowhead.com/wotlk/spell=53554

    - Mobility (Rank 2)
      Reduces the cooldown on your pet's Dive ability by 16 sec.
      https://www.wowhead.com/wotlk/spell=53555

    --]]

    [23145] = { duration = 32, class = "HUNTER", adjust = { ["Beast Mastery"] = -20.8, default = -16 } }, -- Dive

    --[[ Demoralizing Screech Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [24423] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Demoralizing Screech (Rank 1)
        [24577] = { parent = 24423 }, -- Demoralizing Screech (Rank 2)
        [24578] = { parent = 24423 }, -- Demoralizing Screech (Rank 3)
        [24579] = { parent = 24423 }, -- Demoralizing Screech (Rank 4)
        [27051] = { parent = 24423 }, -- Demoralizing Screech (Rank 5)
        [55487] = { parent = 24423 }, -- Demoralizing Screech (Rank 6)

    --[[ Prowl Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [24450] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Prowl (Rank 1)
        [24452] = { parent = 24450 }, -- Prowl (Rank 2)
        [24453] = { parent = 24450 }, -- Prowl (Rank 3)

    --[[ Scorpid Poison Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [24640] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Scorpid Poison (Rank 1)
        [24583] = { parent = 24640 }, -- Scorpid Poison (Rank 2)
        [24586] = { parent = 24640 }, -- Scorpid Poison (Rank 3)
        [24587] = { parent = 24640 }, -- Scorpid Poison (Rank 4)
        [27060] = { parent = 24640 }, -- Scorpid Poison (Rank 5)
        [55728] = { parent = 24640 }, -- Scorpid Poison (Rank 6)

    --[[ Furious Howl Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [24604] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Furious Howl (Rank 1)
        [64491] = { parent = 24604 }, -- Furious Howl (Rank 2)
        [64492] = { parent = 24604 }, -- Furious Howl (Rank 3)
        [64493] = { parent = 24604 }, -- Furious Howl (Rank 4)
        [64494] = { parent = 24604 }, -- Furious Howl (Rank 5)
        [64495] = { parent = 24604 }, -- Furious Howl (Rank 6)

    --[[ Lightning Breath Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [24844] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Lightning Breath (Rank 1)
        [25008] = { parent = 24844 }, -- Lightning Breath (Rank 2)
        [25009] = { parent = 24844 }, -- Lightning Breath (Rank 3)
        [25010] = { parent = 24844 }, -- Lightning Breath (Rank 4)
        [25011] = { parent = 24844 }, -- Lightning Breath (Rank 5)
        [25012] = { parent = 24844 }, -- Lightning Breath (Rank 6)

    --[[ Shell Shield Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [26064] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18 } }, -- Shell Shield

    --[[ Pummel Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [26090] = { duration = 30, class = "HUNTER", adjust = { ["Beast Mastery"] = -9 } }, -- Pummel

    --[[ Fire Breath Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [34889] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Fire Breath (Rank 1)
        [35323] = { parent = 34889 }, -- Fire Breath (Rank 2)
        [55482] = { parent = 34889 }, -- Fire Breath (Rank 3)
        [55483] = { parent = 34889 }, -- Fire Breath (Rank 4)
        [55484] = { parent = 34889 }, -- Fire Breath (Rank 5)
        [55485] = { parent = 34889 }, -- Fire Breath (Rank 6)

    --[[ Gore Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [35290] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Gore (Rank 1)
        [35291] = { parent = 35290 }, -- Gore (Rank 2)
        [35292] = { parent = 35290 }, -- Gore (Rank 3)
        [35293] = { parent = 35290 }, -- Gore (Rank 4)
        [35294] = { parent = 35290 }, -- Gore (Rank 5)
        [35295] = { parent = 35290 }, -- Gore (Rank 6)

    --[[ Warp Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [35346] = { duration = 15, class = "HUNTER", adjust = { ["Beast Mastery"] = -4.5 } }, -- Warp

    --[[ Poison Spit Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [35387] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Poison Spit (Rank 1)
        [35389] = { parent = 35387 }, -- Poison Spit (Rank 2)
        [35392] = { parent = 35387 }, -- Poison Spit (Rank 3)
        [55555] = { parent = 35387 }, -- Poison Spit (Rank 4)
        [55556] = { parent = 35387 }, -- Poison Spit (Rank 5)
        [55557] = { parent = 35387 }, -- Poison Spit (Rank 6)

    --[[ Pin Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50245] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Pin (Rank 1)
        [53544] = { parent = 50245 }, -- Pin (Rank 2)
        [53545] = { parent = 50245 }, -- Pin (Rank 3)
        [53546] = { parent = 50245 }, -- Pin (Rank 4)
        [53547] = { parent = 50245 }, -- Pin (Rank 5)
        [53548] = { parent = 50245 }, -- Pin (Rank 6)

    --[[ Swipe Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50256] = { duration = 5, class = "HUNTER", adjust = { ["Beast Mastery"] = -1.5 } }, -- Swipe (Rank 1)
        [53526] = { parent = 50256 }, -- Swipe (Rank 2)
        [53528] = { parent = 50256 }, -- Swipe (Rank 3)
        [53529] = { parent = 50256 }, -- Swipe (Rank 4)
        [53532] = { parent = 50256 }, -- Swipe (Rank 5)
        [53533] = { parent = 50256 }, -- Swipe (Rank 6)

    --[[ Tendon Rip Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50271] = { duration = 20, class = "HUNTER", adjust = { ["Beast Mastery"] = -6 } }, -- Tendon Rip (Rank 1)
        [53571] = { parent = 50271 }, -- Tendon Rip (Rank 2)
        [53572] = { parent = 50271 }, -- Tendon Rip (Rank 3)
        [53573] = { parent = 50271 }, -- Tendon Rip (Rank 4)
        [53574] = { parent = 50271 }, -- Tendon Rip (Rank 5)
        [53575] = { parent = 50271 }, -- Tendon Rip (Rank 6)

    --[[ Spore Cloud Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50274] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3 } }, -- Spore Cloud (Rank 1)
        [53593] = { parent = 50274 }, -- Spore Cloud (Rank 2)
        [53594] = { parent = 50274 }, -- Spore Cloud (Rank 3)
        [53596] = { parent = 50274 }, -- Spore Cloud (Rank 4)
        [53597] = { parent = 50274 }, -- Spore Cloud (Rank 5)
        [53598] = { parent = 50274 }, -- Spore Cloud (Rank 6)

    --[[ Dust Cloud Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50285] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Dust Cloud

    --[[ Serenity Dust Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50318] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18 } }, -- Serenity Dust (Rank 1)
        [52012] = { parent = 50318 }, -- Serenity Dust (Rank 2)
        [52013] = { parent = 50318 }, -- Serenity Dust (Rank 3)
        [52014] = { parent = 50318 }, -- Serenity Dust (Rank 4)
        [52015] = { parent = 50318 }, -- Serenity Dust (Rank 5)
        [52016] = { parent = 50318 }, -- Serenity Dust (Rank 6)

    --[[ Bad Attitude Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50433] = { duration = 120, class = "HUNTER", adjust = { ["Beast Mastery"] = -36 } }, -- Bad Attitude (Rank 1)
        [52395] = { parent = 50433 }, -- Bad Attitude (Rank 2)
        [52396] = { parent = 50433 }, -- Bad Attitude (Rank 3)
        [52397] = { parent = 50433 }, -- Bad Attitude (Rank 4)
        [52398] = { parent = 50433 }, -- Bad Attitude (Rank 5)
        [52399] = { parent = 50433 }, -- Bad Attitude (Rank 6)

    --[[ Nether Shock Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50479] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Nether Shock (Rank 1)
        [53584] = { parent = 50479 }, -- Nether Shock (Rank 2)
        [53586] = { parent = 50479 }, -- Nether Shock (Rank 3)
        [53587] = { parent = 50479 }, -- Nether Shock (Rank 4)
        [53588] = { parent = 50479 }, -- Nether Shock (Rank 5)
        [53589] = { parent = 50479 }, -- Nether Shock (Rank 6)

    --[[ Savage Rend Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50498] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18} }, -- Savage Rend (Rank 1)
        [50871] = { parent = 50498 }, -- Savage Rend (Rank 1)
        [53578] = { parent = 50498 }, -- Savage Rend (Rank 2)
        [53579] = { parent = 50498 }, -- Savage Rend (Rank 3)
        [53580] = { parent = 50498 }, -- Savage Rend (Rank 4)
        [53581] = { parent = 50498 }, -- Savage Rend (Rank 5)
        [53582] = { parent = 50498 }, -- Savage Rend (Rank 6)

    --[[ Ravage Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50518] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Ravage (Rank 1)
        [53558] = { parent = 50518 }, -- Ravage (Rank 2)
        [53559] = { parent = 50518 }, -- Ravage (Rank 3)
        [53560] = { parent = 50518 }, -- Ravage (Rank 4)
        [53561] = { parent = 50518 }, -- Ravage (Rank 5)
        [53562] = { parent = 50518 }, -- Ravage (Rank 6)

    --[[ Sonic Blast Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50519] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18} }, -- Sonic Blast (Rank 1)
        [53564] = { parent = 50519 }, -- Sonic Blast (Rank 2)
        [53565] = { parent = 50519 }, -- Sonic Blast (Rank 3)
        [53566] = { parent = 50519 }, -- Sonic Blast (Rank 4)
        [53567] = { parent = 50519 }, -- Sonic Blast (Rank 5)
        [53568] = { parent = 50519 }, -- Sonic Blast (Rank 6)

    --[[ Snatch Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [50541] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18} }, -- Snatch (Rank 1)
        [53537] = { parent = 50541 }, -- Snatch (Rank 2)
        [53538] = { parent = 50541 }, -- Snatch (Rank 3)
        [53540] = { parent = 50541 }, -- Snatch (Rank 4)
        [53542] = { parent = 50541 }, -- Snatch (Rank 5)
        [53543] = { parent = 50541 }, -- Snatch (Rank 6)

    --[[ Swoop Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [52825] = { duration = 25, class = "HUNTER", adjust = { ["Beast Mastery"] = -7.5 } }, -- Swoop

    --[[ Rabid Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [53401] = { duration = 45, class = "HUNTER", adjust = { ["Beast Mastery"] = -13.5 } }, -- Rabid

    --[[ Lick Your Wounds Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [53426] = { duration = 180, class = "HUNTER", adjust = { ["Beast Mastery"] = -54} }, -- Lick Your Wounds

    --[[ Call of the Wild Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [53434] = { duration = 300, class = "HUNTER", adjust = { ["Beast Mastery"] = -90 } }, -- Call of the Wild

    --[[ Intervene Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [53476] = { duration = 30, class = "HUNTER", adjust = { ["Beast Mastery"] = -9} }, -- Intervene

    --[[ Taunt Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [53477] = { duration = 180, class = "HUNTER", adjust = { ["Beast Mastery"] = -54} }, -- Taunt

    --[[ Last Stand Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [53478] = { duration = 360, class = "HUNTER", adjust = { ["Beast Mastery"] = -108} }, -- Last Stand

    --[[ Roar of Sacrifice Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [53480] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18} }, -- Roar of Sacrifice

    --[[ Bullheaded Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [53490] = { duration = 180, class = "HUNTER", adjust = { ["Beast Mastery"] = -54} }, -- Bullheaded

    --[[ Wolverine Bite Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [53508] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Wolverine Bite

    --[[ Roar of Recovery Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [53517] = { duration = 180, class = "HUNTER", adjust = { ["Beast Mastery"] = -54} }, -- Roar of Recovery

    --[[ Carrion Feeder Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [54044] = { duration = 30, class = "HUNTER", adjust = { ["Beast Mastery"] = -9} }, -- Carrion Feeder

    --[[ Froststorm Breath Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [54644] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Froststorm Breath (Rank 1)
        [55488] = { parent = 54644 }, -- Froststorm Breath (Rank 2)
        [55489] = { parent = 54644 }, -- Froststorm Breath (Rank 3)
        [55490] = { parent = 54644 }, -- Froststorm Breath (Rank 4)
        [55491] = { parent = 54644 }, -- Froststorm Breath (Rank 5)
        [55492] = { parent = 54644 }, -- Froststorm Breath (Rank 6)

    --[[ Monstrous Bite Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [54680] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Monstrous Bite (Rank 1)
        [55495] = { parent = 54680 }, -- Monstrous Bite (Rank 2)
        [55496] = { parent = 54680 }, -- Monstrous Bite (Rank 3)
        [55497] = { parent = 54680 }, -- Monstrous Bite (Rank 4)
        [55498] = { parent = 54680 }, -- Monstrous Bite (Rank 5)
        [55499] = { parent = 54680 }, -- Monstrous Bite (Rank 6)

    --[[ Venom Web Spray Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [54706] = { duration = 40, class = "HUNTER", adjust = { ["Beast Mastery"] = -12 } }, -- Venom Web Spray (Rank 1)
        [55505] = { parent = 54706 }, -- Venom Web Spray (Rank 2)
        [55506] = { parent = 54706 }, -- Venom Web Spray (Rank 3)
        [55507] = { parent = 54706 }, -- Venom Web Spray (Rank 4)
        [55508] = { parent = 54706 }, -- Venom Web Spray (Rank 5)
        [55509] = { parent = 54706 }, -- Venom Web Spray (Rank 6)

    [55709] = { duration = 480, class = "HUNTER", adjust = { ["Beast Mastery"] = -144} }, -- Heart of the Phoenix

    --[[ Acid Spit Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [55749] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Acid Spit (Rank 1)
        [55750] = { parent = 55749 }, -- Acid Spit (Rank 2)
        [55751] = { parent = 55749 }, -- Acid Spit (Rank 3)
        [55752] = { parent = 55749 }, -- Acid Spit (Rank 4)
        [55753] = { parent = 55749 }, -- Acid Spit (Rank 5)
        [55754] = { parent = 55749 }, -- Acid Spit (Rank 6)

    --[[ Sting Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [56626] = { duration = 6, class = "HUNTER", adjust = { ["Beast Mastery"] = -1.8 } }, -- Sting (Rank 1)
        [56627] = { parent = 56626 }, -- Sting (Rank 2)
        [56628] = { parent = 56626 }, -- Sting (Rank 3)
        [56629] = { parent = 56626 }, -- Sting (Rank 4)
        [56630] = { parent = 56626 }, -- Sting (Rank 5)
        [56631] = { parent = 56626 }, -- Sting (Rank 6)

    --[[ Stampede Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [57386] = { duration = 60, class = "HUNTER", adjust = { ["Beast Mastery"] = -18} }, -- Stampede (Rank 1)
        [57389] = { parent = 57386 }, -- Stampede (Rank 2)
        [57390] = { parent = 57386 }, -- Stampede (Rank 3)
        [57391] = { parent = 57386 }, -- Stampede (Rank 4)
        [57392] = { parent = 57386 }, -- Stampede (Rank 5)
        [57393] = { parent = 57386 }, -- Stampede (Rank 6)

    --[[ Lava Breath Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [58604] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Lava Breath (Rank 1)
        [58607] = { parent = 58604 }, -- Lava Breath (Rank 2)
        [58608] = { parent = 58604 }, -- Lava Breath (Rank 3)
        [58609] = { parent = 58604 }, -- Lava Breath (Rank 4)
        [58610] = { parent = 58604 }, -- Lava Breath (Rank 5)
        [58611] = { parent = 58604 }, -- Lava Breath (Rank 6)

    --[[ Rake Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [59881] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Rake (Rank 1)
        [59882] = { parent = 59881 }, -- Rake (Rank 2)
        [59883] = { parent = 59881 }, -- Rake (Rank 3)
        [59884] = { parent = 59881 }, -- Rake (Rank 4)
        [59885] = { parent = 59881 }, -- Rake (Rank 5)
        [59886] = { parent = 59881 }, -- Rake (Rank 6)

    --[[ Spirit Strike Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [61193] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Spirit Strike (Rank 1)
        [61194] = { parent = 61193 }, -- Spirit Strike (Rank 2)
        [61195] = { parent = 61193 }, -- Spirit Strike (Rank 3)
        [61196] = { parent = 61193 }, -- Spirit Strike (Rank 4)
        [61197] = { parent = 61193 }, -- Spirit Strike (Rank 5)
        [61198] = { parent = 61193 }, -- Spirit Strike (Rank 6)

    --[[ Dash Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    - Mobility (Rank 1)
      Reduces the cooldown on your pet's Dash ability by 8 sec.
      https://www.wowhead.com/wotlk/spell=53483

    - Mobility (Rank 2)
      Reduces the cooldown on your pet's Dash ability by 16 sec.
      https://www.wowhead.com/wotlk/spell=53485

    - Mobility (Rank 1)
      Reduces the cooldown on your pet's Dive ability by 8 sec.
      https://www.wowhead.com/wotlk/spell=53554

    - Mobility (Rank 2)
      Reduces the cooldown on your pet's Dive ability by 16 sec.
      https://www.wowhead.com/wotlk/spell=53555

    --]]

    [61684] = { duration = 32, class = "HUNTER", adjust = { ["Beast Mastery"] = -20.8, default = -16} }, -- Dash

    --[[ Charge Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [61685] = { duration = 25, class = "HUNTER", adjust = { ["Beast Mastery"] = -7.5 } }, -- Charge

    --[[ Thunderstomp Modifiers

    - Longevity (Rank 1)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 10%.
      https://www.wowhead.com/wotlk/spell=53262

    - Longevity (Rank 2)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 20%.
      https://www.wowhead.com/wotlk/spell=53263

    - Longevity (Rank 3)
      Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by 30%.
      https://www.wowhead.com/wotlk/spell=53264

    --]]

    [63900] = { duration = 10, class = "HUNTER", adjust = { ["Beast Mastery"] = -3} }, -- Thunderstomp

    -- Druid

    --[[ Tranquility Modifiers

    - Improved Tranquility (Rank 1)
      Reduces threat caused by Tranquility by 50%, and reduces the cooldown by 30%.
      https://www.wowhead.com/wotlk/spell=17123

    - Improved Tranquility (Rank 2)
      Reduces threat caused by Tranquility by 100%, and reduces the cooldown by 60%.
      https://www.wowhead.com/wotlk/spell=17124

    --]]

    [740] = { duration = 480, class = "DRUID" }, -- Tranquility (Rank 1)
        [8918] = { parent = 740 }, -- Tranquility (Rank 2)
        [9862] = { parent = 740 }, -- Tranquility (Rank 3)
        [9863] = { parent = 740 }, -- Tranquility (Rank 4)
        [26983] = { parent = 740 }, -- Tranquility (Rank 5)
        [48446] = { parent = 740 }, -- Tranquility (Rank 6)
        [48447] = { parent = 740 }, -- Tranquility (Rank 7)

    --[[ Dash Modifiers

    - Glyph of Dash
      Reduces the cooldown of your Dash ability by 20%.
      https://www.wowhead.com/wotlk/spell=59219

    - Glyph of Dash
      Reduces the cooldown of your Dash ability by 20%.
      https://www.wowhead.com/wotlk/spell=59218

    --]]

    [1850] = { duration = 180, class = "DRUID", adjust = -36 }, -- Dash (Rank 1)
        [9821] = { parent = 1850 }, -- Dash (Rank 2)
        [33357] = { parent = 1850 }, -- Dash (Rank 3)

    --[[ Challenging Roar Modifiers

    - Glyph of Challenging Roar
      Reduces the cooldown of your Challenging Roar ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=57858

    --]]

    [5209] = { duration = 180, class = "DRUID" }, -- Challenging Roar

    --[[ Bash Modifiers

    - Brutal Impact (Rank 1)
      Increases the stun duration of your Bash and Pounce abilities by 0.5 sec and decreases the cooldown of Bash by 15 sec.
      https://www.wowhead.com/wotlk/spell=16940

    - Brutal Impact (Rank 2)
      Increases the stun duration of your Bash and Pounce abilities by 1 sec and decreases the cooldown of Bash by 30 sec.
      https://www.wowhead.com/wotlk/spell=16941

    --]]

    [5211] = { duration = 60, class = "DRUID", adjust = { Feral = -30 } }, -- Bash (Rank 1)
        [6798] = { parent = 5211 }, -- Bash (Rank 2)
        [8983] = { parent = 5211 }, -- Bash (Rank 3)

    [5215] = { duration = 10, class = "DRUID" }, -- Prowl


    [5217] = { duration = 30, class = "DRUID" }, -- Tiger's Fury (Rank 1)
        [6793] = { parent = 5217 }, -- Tiger's Fury (Rank 2)
        [9845] = { parent = 5217 }, -- Tiger's Fury (Rank 3)
        [9846] = { parent = 5217 }, -- Tiger's Fury (Rank 4)
        [50212] = { parent = 5217 }, -- Tiger's Fury (Rank 5)
        [50213] = { parent = 5217 }, -- Tiger's Fury (Rank 6)

    [5229] = { duration = 60, class = "DRUID" }, -- Enrage

    [6795] = { duration = 8, class = "DRUID" }, -- Growl

    [8998] = { duration = 10, class = "DRUID" }, -- Cower (Rank 1)
        [9000] = { parent = 8998 }, -- Cower (Rank 2)
        [9892] = { parent = 8998 }, -- Cower (Rank 3)
        [31709] = { parent = 8998 }, -- Cower (Rank 4)
        [27004] = { parent = 8998 }, -- Cower (Rank 5)
        [48575] = { parent = 8998 }, -- Cower (Rank 6)

    [16689] = { duration = 60, class = "DRUID" }, -- Nature's Grasp (Rank 1)
        [16810] = { parent = 16689 }, -- Nature's Grasp (Rank 2)
        [16811] = { parent = 16689 }, -- Nature's Grasp (Rank 3)
        [16812] = { parent = 16689 }, -- Nature's Grasp (Rank 4)
        [16813] = { parent = 16689 }, -- Nature's Grasp (Rank 5)
        [17329] = { parent = 16689 }, -- Nature's Grasp (Rank 6)
        [27009] = { parent = 16689 }, -- Nature's Grasp (Rank 7)
        [53312] = { parent = 16689 }, -- Nature's Grasp (Rank 8)

    [16857] = { duration = 6, class = "DRUID" }, -- Faerie Fire (Feral)

    [16979] = { duration = 15, class = "DRUID", default = true }, -- Feral Charge - Bear

    [17116] = { duration = 180, class = "DRUID" }, -- Nature's Swiftness

    --[[ Swiftmend Modifiers

    - Reduced Swiftmend Cooldown
      Reduces the cooldown of your Swiftmend ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=38417

    --]]

    [18562] = { duration = 15, class = "DRUID", adjust = -2 }, -- Swiftmend

    [20484] = { duration = 600, class = "DRUID" }, -- Rebirth (Rank 1)
        [20739] = { parent = 20484 }, -- Rebirth (Rank 2)
        [20742] = { parent = 20484 }, -- Rebirth (Rank 3)
        [20747] = { parent = 20484 }, -- Rebirth (Rank 4)
        [20748] = { parent = 20484 }, -- Rebirth (Rank 5)
        [26994] = { parent = 20484 }, -- Rebirth (Rank 6)
        [48477] = { parent = 20484 }, -- Rebirth (Rank 7)

    [22570] = { duration = 10, class = "DRUID" }, -- Maim (Rank 1)
        [49802] = { parent = 22570 }, -- Maim (Rank 2)

    [22812] = { duration = 60, class = "DRUID" }, -- Barkskin

    [22842] = { duration = 180, class = "DRUID" }, -- Frenzied Regeneration

    [29166] = { duration = 180, class = "DRUID" }, -- Innervate

    [33831] = { duration = 180, class = "DRUID" }, -- Force of Nature

    --[[ Mangle (Bear) Modifiers

    - Improved Mangle (Rank 2)
      Reduces the cooldown of your Mangle (Bear) ability by 1.0 sec., and reduces the energy cost of your Mangle (Cat) ability by 4.
      https://www.wowhead.com/wotlk/spell=48489

    - Improved Mangle (Rank 3)
      Reduces the cooldown of your Mangle (Bear) ability by 1.5 sec., and reduces the energy cost of your Mangle (Cat) ability by 6.
      https://www.wowhead.com/wotlk/spell=48491

    - Improved Mangle (Rank 1)
      Reduces the cooldown of your Mangle (Bear) ability by 0.5 sec., and reduces the energy cost of your Mangle (Cat) ability by 2.
      https://www.wowhead.com/wotlk/spell=48532

    --]]

    [33878] = { duration = 6, class = "DRUID", adjust = -1.5 }, -- Mangle (Bear) (Rank 1), cooldown is 0 if Berserk aura is active
        [33986] = { parent = 33878 }, -- Mangle (Bear) (Rank 2)
        [33987] = { parent = 33878 }, -- Mangle (Bear) (Rank 3)
        [48563] = { parent = 33878 }, -- Mangle (Bear) (Rank 4)
        [48564] = { parent = 33878 }, -- Mangle (Bear) (Rank 5)

    [48438] = { duration = 6, class = "DRUID" }, -- Wild Growth (Rank 1)
        [53248] = { parent = 48438 }, -- Wild Growth (Rank 2)
        [53249] = { parent = 48438 }, -- Wild Growth (Rank 3)
        [53251] = { parent = 48438 }, -- Wild Growth (Rank 4)

    --[[ Starfall Modifiers

    - Glyph of Starfall
      Reduces the cooldown of Starfall by 30 sec.
      https://www.wowhead.com/wotlk/spell=54828

    --]]

    [48505] = { duration = 90, class = "DRUID", adjust = -30 }, -- Starfall (Rank 1)
        [53199] = { parent = 48505 }, -- Starfall (Rank 2)
        [53200] = { parent = 48505 }, -- Starfall (Rank 3)
        [53201] = { parent = 48505 }, -- Starfall (Rank 4)

    --[[ Feral Charge - Cat Modifiers

    - Berserk
      When activated, this ability causes your Mangle (Bear) ability to hit up to 3 targets and have no cooldown, and reduces the energy cost of all your Cat Form abilities by 50%. Lasts 15 sec. You cannot use Tiger's Fury while Berserk is active. <br /><br />Clears the effect of Fear and makes you immune to Fear for the duration.
      https://www.wowhead.com/wotlk/spell=50334

    --]]

    [49376] = { duration = 30, class = "DRUID" }, -- Feral Charge - Cat

    [50334] = { duration = 180, class = "DRUID" }, -- Berserk

    --[[ Typhoon Modifiers

    - Glyph of Monsoon
      Reduces the cooldown of your Typhoon spell by 3 sec.
      https://www.wowhead.com/wotlk/spell=63056

    --]]

    [50516] = { duration = 20, class = "DRUID", adjust = -3 }, -- Typhoon (Rank 1)
        [53223] = { parent = 50516 }, -- Typhoon (Rank 2)
        [53225] = { parent = 50516 }, -- Typhoon (Rank 3)
        [53226] = { parent = 50516 }, -- Typhoon (Rank 4)
        [61384] = { parent = 50516 }, -- Typhoon (Rank 5)

    [61336] = { duration = 180, class = "DRUID" }, -- Survival Instincts

    -- Mage

    --[[ Invisibility Modifiers

    - Arcane Flows (Rank 1)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 15% and the cooldown of your Evocation spell by 1 min.
      https://www.wowhead.com/wotlk/spell=44378

    - Arcane Flows (Rank 2)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 30% and the cooldown of your Evocation spell by 2 min.
      https://www.wowhead.com/wotlk/spell=44379

    --]]

    [66] = { duration = 180, class = "MAGE", adjust = { Arcane = -54} }, -- Invisibility

    --[[ Cone of Cold Modifiers

    - Ice Floes (Rank 1)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 7%.
      https://www.wowhead.com/wotlk/spell=31670

    - Ice Floes (Rank 2)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 14%.
      https://www.wowhead.com/wotlk/spell=31672

    - Ice Floes (Rank 3)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 20%.
      https://www.wowhead.com/wotlk/spell=55094

    --]]

    [120] = { duration = 10, class = "MAGE", adjust = -2 }, -- Cone of Cold (Rank 1)
        [8492] = { parent = 120 }, -- Cone of Cold (Rank 2)
        [10159] = { parent = 120 }, -- Cone of Cold (Rank 3)
        [10160] = { parent = 120 }, -- Cone of Cold (Rank 4)
        [10161] = { parent = 120 }, -- Cone of Cold (Rank 5)
        [27087] = { parent = 120 }, -- Cone of Cold (Rank 6)
        [42930] = { parent = 120 }, -- Cone of Cold (Rank 7)
        [42931] = { parent = 120 }, -- Cone of Cold (Rank 8)

    --[[ Frost Nova Modifiers

    - Ice Floes (Rank 1)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 7%.
      https://www.wowhead.com/wotlk/spell=31670

    - Ice Floes (Rank 2)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 14%.
      https://www.wowhead.com/wotlk/spell=31672

    - Ice Floes (Rank 3)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 20%.
      https://www.wowhead.com/wotlk/spell=55094

    - Glyph of Ice Block
      Your Frost Nova cooldown is now reset every time you use Ice Block.
      https://www.wowhead.com/wotlk/spell=56592

    --]]

    [122] = { duration = 25, class = "MAGE", adjust = -5 }, -- Frost Nova (Rank 1)
        [865] = { parent = 122 }, -- Frost Nova (Rank 2)
        [6131] = { parent = 122 }, -- Frost Nova (Rank 3)
        [10230] = { parent = 122 }, -- Frost Nova (Rank 4)
        [27088] = { parent = 122 }, -- Frost Nova (Rank 5)
        [42917] = { parent = 122 }, -- Frost Nova (Rank 6)

    [543] = { duration = 30, class = "MAGE" }, -- Fire Ward (Rank 1)
        [8457] = { parent = 543 }, -- Fire Ward (Rank 2)
        [8458] = { parent = 543 }, -- Fire Ward (Rank 3)
        [10223] = { parent = 543 }, -- Fire Ward (Rank 4)
        [10225] = { parent = 543 }, -- Fire Ward (Rank 5)
        [27128] = { parent = 543 }, -- Fire Ward (Rank 6)
        [43010] = { parent = 543 }, -- Fire Ward (Rank 7)

    [1953] = { duration = 15, class = "MAGE" }, -- Blink

    --[[ Fire Blast Modifiers

    - Improved Fire Blast (Rank 1)
      Reduces the cooldown of your Fire Blast spell by 1 sec.
      https://www.wowhead.com/wotlk/spell=11078

    - Improved Fire Blast (Rank 2)
      Reduces the cooldown of your Fire Blast spell by 2 sec.
      https://www.wowhead.com/wotlk/spell=11080

    --]]

    [2136] = { duration = 8, class = "MAGE" }, -- Fire Blast (Rank 1)
        [2137] = { parent = 2136 }, -- Fire Blast (Rank 2)
        [2138] = { parent = 2136 }, -- Fire Blast (Rank 3)
        [8412] = { parent = 2136 }, -- Fire Blast (Rank 4)
        [8413] = { parent = 2136 }, -- Fire Blast (Rank 5)
        [10197] = { parent = 2136 }, -- Fire Blast (Rank 6)
        [10199] = { parent = 2136 }, -- Fire Blast (Rank 7)
        [27078] = { parent = 2136 }, -- Fire Blast (Rank 8)
        [27079] = { parent = 2136 }, -- Fire Blast (Rank 9)
        [42872] = { parent = 2136 }, -- Fire Blast (Rank 10)
        [42873] = { parent = 2136 }, -- Fire Blast (Rank 11)

    [2139] = { duration = 24, class = "MAGE", default = true }, -- Counterspell

    [6143] = { duration = 30, class = "MAGE" }, -- Frost Ward (Rank 1)
        [8461] = { parent = 6143 }, -- Frost Ward (Rank 2)
        [8462] = { parent = 6143 }, -- Frost Ward (Rank 3)
        [10177] = { parent = 6143 }, -- Frost Ward (Rank 4)
        [28609] = { parent = 6143 }, -- Frost Ward (Rank 5)
        [32796] = { parent = 6143 }, -- Frost Ward (Rank 6)
        [43012] = { parent = 6143 }, -- Frost Ward (Rank 7)

    [11113] = { duration = 30, class = "MAGE" }, -- Blast Wave (Rank 1)
        [13018] = { parent = 11113 }, -- Blast Wave (Rank 2)
        [13019] = { parent = 11113 }, -- Blast Wave (Rank 3)
        [13020] = { parent = 11113 }, -- Blast Wave (Rank 4)
        [13021] = { parent = 11113 }, -- Blast Wave (Rank 5)
        [27133] = { parent = 11113 }, -- Blast Wave (Rank 6)
        [33933] = { parent = 11113 }, -- Blast Wave (Rank 7)
        [42944] = { parent = 11113 }, -- Blast Wave (Rank 8)
        [42945] = { parent = 11113 }, -- Blast Wave (Rank 9)

    [11129] = { duration = 120, class = "MAGE" }, -- Combustion

    --[[ Ice Barrier Modifiers

    - Cold as Ice (Rank 1)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 10%.
      https://www.wowhead.com/wotlk/spell=55091

    - Cold as Ice (Rank 2)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 20%.
      https://www.wowhead.com/wotlk/spell=55092

    --]]

    [11426] = { duration = 30, class = "MAGE", adjust = -6 }, -- Ice Barrier (Rank 1)
        [13031] = { parent = 11426 }, -- Ice Barrier (Rank 2)
        [13032] = { parent = 11426 }, -- Ice Barrier (Rank 3)
        [13033] = { parent = 11426 }, -- Ice Barrier (Rank 4)
        [27134] = { parent = 11426 }, -- Ice Barrier (Rank 5)
        [33405] = { parent = 11426 }, -- Ice Barrier (Rank 6)
        [43038] = { parent = 11426 }, -- Ice Barrier (Rank 7)
        [43039] = { parent = 11426 }, -- Ice Barrier (Rank 8)

    --[[ Cold Snap Modifiers

    - Cold as Ice (Rank 1)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 10%.
      https://www.wowhead.com/wotlk/spell=55091

    - Cold as Ice (Rank 2)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 20%.
      https://www.wowhead.com/wotlk/spell=55092

    --]]

    [11958] = { duration = 480, class = "MAGE", adjust = -96 }, -- Cold Snap

    --[[ Arcane Power Modifiers

    - Arcane Flows (Rank 1)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 15% and the cooldown of your Evocation spell by 1 min.
      https://www.wowhead.com/wotlk/spell=44378

    - Arcane Flows (Rank 2)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 30% and the cooldown of your Evocation spell by 2 min.
      https://www.wowhead.com/wotlk/spell=44379

    --]]

    [12042] = { duration = 120, class = "MAGE", adjust = -36 }, -- Arcane Power

    --[[ Presence of Mind Modifiers

    - Cooldown Reduction
      Reduces the cooldown on Presence of Mind by 24 sec, on Blast Wave by 4 sec, and on Ice Block by 40 sec.
      https://www.wowhead.com/wotlk/spell=37439

    - Arcane Flows (Rank 1)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 15% and the cooldown of your Evocation spell by 1 min.
      https://www.wowhead.com/wotlk/spell=44378

    - Arcane Flows (Rank 2)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 30% and the cooldown of your Evocation spell by 2 min.
      https://www.wowhead.com/wotlk/spell=44379

    --]]

    [12043] = { duration = 120, class = "MAGE", adjust = -36 }, -- Presence of Mind

    --[[ Evocation Modifiers

    - Evocation
      Reduces cooldown on your Evocation by 1 minute.
      https://www.wowhead.com/wotlk/spell=28763

    - Arcane Flows (Rank 1)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 15% and the cooldown of your Evocation spell by 1 min.
      https://www.wowhead.com/wotlk/spell=44378

    - Arcane Flows (Rank 2)
      Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by 30% and the cooldown of your Evocation spell by 2 min.
      https://www.wowhead.com/wotlk/spell=44379

    --]]

    [12051] = { duration = 240, class = "MAGE", adjust = { Arcane = -120 } }, -- Evocation

    --[[ Icy Veins Modifiers

    - Ice Floes (Rank 1)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 7%.
      https://www.wowhead.com/wotlk/spell=31670

    - Ice Floes (Rank 2)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 14%.
      https://www.wowhead.com/wotlk/spell=31672

    - Ice Floes (Rank 3)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 20%.
      https://www.wowhead.com/wotlk/spell=55094

    --]]

    [12472] = { duration = 180, class = "MAGE", adjust = -36 }, -- Icy Veins

    [31661] = { duration = 20, class = "MAGE" }, -- Dragon's Breath (Rank 1)
        [33041] = { parent = 31661 }, -- Dragon's Breath (Rank 2)
        [33042] = { parent = 31661 }, -- Dragon's Breath (Rank 3)
        [33043] = { parent = 31661 }, -- Dragon's Breath (Rank 4)
        [42949] = { parent = 31661 }, -- Dragon's Breath (Rank 5)
        [42950] = { parent = 31661 }, -- Dragon's Breath (Rank 6)

    --[[ Summon Water Elemental Modifiers

    - Cold as Ice (Rank 1)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 10%.
      https://www.wowhead.com/wotlk/spell=55091

    - Cold as Ice (Rank 2)
      Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by 20%.
      https://www.wowhead.com/wotlk/spell=55092

    - Glyph of Water Elemental
      Reduces the cooldown of your Summon Water Elemental spell by 30 sec.
      https://www.wowhead.com/wotlk/spell=56373

    --]]

    [31687] = { duration = 180, class = "MAGE", adjust = -36 }, -- Summon Water Elemental

    [43987] = { duration = 300, class = "MAGE" }, -- Ritual of Refreshment (Rank 1)
        [58659] = { parent = 43987 }, -- Ritual of Refreshment (Rank 2)

    [44425] = { duration = 3, class = "MAGE" }, -- Arcane Barrage (Rank 1)
        [44780] = { parent = 44425 }, -- Arcane Barrage (Rank 2)
        [44781] = { parent = 44425 }, -- Arcane Barrage (Rank 3)

    [44572] = { duration = 30, class = "MAGE" }, -- Deep Freeze

    --[[ Ice Block Modifiers

    - Ice Floes (Rank 1)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 7%.
      https://www.wowhead.com/wotlk/spell=31670

    - Ice Floes (Rank 2)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 14%.
      https://www.wowhead.com/wotlk/spell=31672

    - Ice Floes (Rank 3)
      Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by 20%.
      https://www.wowhead.com/wotlk/spell=55094

    - Glyph of Ice Block
      Your Frost Nova cooldown is now reset every time you use Ice Block.
      https://www.wowhead.com/wotlk/spell=56592

    --]]

    [45438] = { duration = 300, class = "MAGE" }, -- Ice Block

    [55342] = { duration = 180, class = "MAGE" }, -- Mirror Image

     -- Rogue

    [408] = { duration = 20, class = "ROGUE" }, -- Kidney Shot (Rank 1)
    [8643] = { parent = 408 }, -- Kidney Shot (Rank 2)

    --[[ Distract Modifiers

    - Filthy Tricks (Rank 1)
    Reduces the cooldown by 5 sec and energy cost by 5 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 1.5 min.
    https://www.wowhead.com/wotlk/spell=58414

    - Filthy Tricks (Rank 2)
      Reduces the cooldown by 10 sec and energy cost by 10 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 3 min.
      https://www.wowhead.com/wotlk/spell=58415

    --]]

    [1725] = { duration = 30, class = "ROGUE", adjust = { Subtlety = -10 } }, -- Distract

    [1766] = { duration = 10, class = "ROGUE", default = true }, -- Kick

    [1776] = { duration = 10, class = "ROGUE" }, -- Gouge

    --[[ Stealth Modifiers

    - Camouflage (Rank 1)
      Increases your speed while stealthed by 5% and reduces the cooldown of your Stealth ability by 2 sec.
      https://www.wowhead.com/wotlk/spell=13975

    - Camouflage (Rank 2)
      Increases your speed while stealthed by 10% and reduces the cooldown of your Stealth ability by 4 sec.
      https://www.wowhead.com/wotlk/spell=14062

    - Camouflage (Rank 3)
      Increases your speed while stealthed by 15% and reduces the cooldown of your Stealth ability by 6 sec.
      https://www.wowhead.com/wotlk/spell=14063

    --]]

    [1784] = { duration = 10, class = "ROGUE", adjust = { Assassination = -6, default = -4 } }, -- Stealth

    --[[ Vanish Modifiers

    - Elusiveness (Rank 1)
      Reduces the cooldown of your Vanish and Blind abilities by 30 sec and your Cloak of Shadows ability by 15 sec.
      https://www.wowhead.com/wotlk/spell=13981

    - Elusiveness (Rank 2)
      Reduces the cooldown of your Vanish and Blind abilities by 60 sec and your Cloak of Shadows ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=14066

    --]]

    [1856] = { duration = 180, class = "ROGUE", adjust = -60 }, -- Vanish (Rank 1)
        [1857] = { parent = 1856 }, -- Vanish (Rank 2)
        [26889] = { parent = 1856 }, -- Vanish (Rank 3)

    [1966] = { duration = 10, class = "ROGUE" }, -- Feint (Rank 1)
        [6768] = { parent = 1966 }, -- Feint (Rank 2)
        [8637] = { parent = 1966 }, -- Feint (Rank 3)
        [11303] = { parent = 1966 }, -- Feint (Rank 4)
        [25302] = { parent = 1966 }, -- Feint (Rank 5)
        [27448] = { parent = 1966 }, -- Feint (Rank 6)
        [48658] = { parent = 1966 }, -- Feint (Rank 7)
        [48659] = { parent = 1966 }, -- Feint (Rank 8)

    --[[ Blind Modifiers

    - Elusiveness (Rank 1)
      Reduces the cooldown of your Vanish and Blind abilities by 30 sec and your Cloak of Shadows ability by 15 sec.
      https://www.wowhead.com/wotlk/spell=13981

    - Elusiveness (Rank 2)
      Reduces the cooldown of your Vanish and Blind abilities by 60 sec and your Cloak of Shadows ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=14066

    --]]

    [2094] = { duration = 180, class = "ROGUE", adjust = -60 }, -- Blind

    --[[ Sprint Modifiers

    - Endurance (Rank 1)
      Reduces the cooldown of your Sprint and Evasion abilities by 30 sec and increases your total Stamina by 2%.
      https://www.wowhead.com/wotlk/spell=13742

    - Endurance (Rank 2)
      Reduces the cooldown of your Sprint and Evasion abilities by 60 sec and increases your total Stamina by 4%.
      https://www.wowhead.com/wotlk/spell=13872

    --]]

    [2983] = { duration = 180, class = "ROGUE", adjust = { Combat = -60 } }, -- Sprint (Rank 1)
        [8696] = { parent = 2983 }, -- Sprint (Rank 2)
        [11305] = { parent = 2983 }, -- Sprint (Rank 3)

    --[[ Evasion Modifiers

    - Endurance (Rank 1)
      Reduces the cooldown of your Sprint and Evasion abilities by 30 sec and increases your total Stamina by 2%.
      https://www.wowhead.com/wotlk/spell=13742

    - Endurance (Rank 2)
      Reduces the cooldown of your Sprint and Evasion abilities by 60 sec and increases your total Stamina by 4%.
      https://www.wowhead.com/wotlk/spell=13872

    --]]

    [5277] = { duration = 180, class = "ROGUE", adjust = { Combat = -60 } }, -- Evasion (Rank 1)
        [26669] = { parent = 5277 }, -- Evasion (Rank 2)

    [13750] = { duration = 180, class = "ROGUE" }, -- Adrenaline Rush

    [13877] = { duration = 120, class = "ROGUE" }, -- Blade Flurry

    [14177] = { duration = 180, class = "ROGUE" }, -- Cold Blood

    [14183] = { duration = 20, class = "ROGUE" }, -- Premeditation

    --[[ Preparation Modifiers

    - Glyph of Preparation
      Your Preparation ability also instantly resets the cooldown of Blade Flurry, Dismantle, and Kick.
      https://www.wowhead.com/wotlk/spell=56819

    - Filthy Tricks (Rank 1)
      Reduces the cooldown by 5 sec and energy cost by 5 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 1.5 min.
      https://www.wowhead.com/wotlk/spell=58414

    - Filthy Tricks (Rank 2)
      Reduces the cooldown by 10 sec and energy cost by 10 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 3 min.
      https://www.wowhead.com/wotlk/spell=58415

    --]]

    [14185] = { duration = 480, class = "ROGUE", adjust = { Subtlety = -180 } }, -- Preparation

    [14251] = { duration = 6, class = "ROGUE" }, -- Riposte

    --[[ Ghostly Strike Modifiers

    - Glyph of Ghostly Strike
      Increases the damage dealt by Ghostly Strike by 40% and the duration of its effect by 4 sec, but increases its cooldown by 10 sec.
      https://www.wowhead.com/wotlk/spell=56814

    --]]

    [14278] = { duration = 20, class = "ROGUE" }, -- Ghostly Strike

    --[[ Cloak of Shadows Modifiers

    - Elusiveness (Rank 1)
      Reduces the cooldown of your Vanish and Blind abilities by 30 sec and your Cloak of Shadows ability by 15 sec.
      https://www.wowhead.com/wotlk/spell=13981

    - Elusiveness (Rank 2)
      Reduces the cooldown of your Vanish and Blind abilities by 60 sec and your Cloak of Shadows ability by 30 sec.
      https://www.wowhead.com/wotlk/spell=14066

    --]]

    [31224] = { duration = 90, class = "ROGUE", adjust = -30 }, -- Cloak of Shadows

    --[[ Shadowstep Modifiers

    - Filthy Tricks (Rank 1)
      Reduces the cooldown by 5 sec and energy cost by 5 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 1.5 min.
      https://www.wowhead.com/wotlk/spell=58414

    - Filthy Tricks (Rank 2)
      Reduces the cooldown by 10 sec and energy cost by 10 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 3 min.
      https://www.wowhead.com/wotlk/spell=58415

    --]]

    [36554] = { duration = 30, class = "ROGUE", adjust = -10 }, -- Shadowstep

    --[[ Killing Spree Modifiers

    - Glyph of Killing Spree
      Reduces the cooldown on Killing Spree by 45 sec.
      https://www.wowhead.com/wotlk/spell=63879

    --]]

    [51690] = { duration = 120, class = "ROGUE", adjust = -45 }, -- Killing Spree

    [51713] = { duration = 60, class = "ROGUE" }, -- Shadow Dance

    [51722] = { duration = 60, class = "ROGUE" }, -- Dismantle

    --[[ Tricks of the Trade Modifiers

    - Filthy Tricks (Rank 1)
      Reduces the cooldown by 5 sec and energy cost by 5 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 1.5 min.
      https://www.wowhead.com/wotlk/spell=58414

    - Filthy Tricks (Rank 2)
      Reduces the cooldown by 10 sec and energy cost by 10 of your Tricks of the Trade, Distract and Shadowstep abilities and reduces the cooldown of Preparation by 3 min.
      https://www.wowhead.com/wotlk/spell=58415

    --]]

    [57934] = { duration = 30, class = "ROGUE", adjust = { Subtlety = -10 } }, -- Tricks of the Trade

    -- Warrior

    [72] = { duration = 12, class = "WARRIOR", default = true }, -- Shield Bash

    --[[ Charge Modifiers

    - Glyph of Rapid Charge
      Reduces the cooldown of your Charge ability by 7%.
      https://www.wowhead.com/wotlk/spell=58355

    - Juggernaut (Rank 1)
      Your Charge ability is now usable while in combat, but the cooldown on Charge is increased by 5 sec. Following a Charge, your next Slam or Mortal Strike has an additional 25% chance to critically hit if used within 10 sec.
      https://www.wowhead.com/wotlk/spell=64976

    --]]

    [100] = { duration = 15, class = "WARRIOR", adjust = { Arms = 5 } }, -- Charge (Rank 1)
        [6178] = { parent = 100 }, -- Charge (Rank 2)
        [11578] = { parent = 100 }, -- Charge (Rank 3)

    [355] = { duration = 8, class = "WARRIOR" }, -- Taunt

    --[[ Disarm Modifiers

    - Improved Disarm (Rank 1)
      Reduces the cooldown of your Disarm ability by 10 sec and causes the target to take an additional 5% damage while disarmed.
      https://www.wowhead.com/wotlk/spell=12313

    - Improved Disarm (Rank 2)
      Reduces the cooldown of your Disarm ability by 20 sec and causes the target to take an additional 10% damage while disarmed.
      https://www.wowhead.com/wotlk/spell=12804

    --]]

    [676] = { duration = 60, class = "WARRIOR", adjust = { Protection = -20 } }, -- Disarm

    [694] = { duration = 60, class = "WARRIOR" }, -- Mocking Blow

    --[[ Shield Wall Modifiers

    - Improved Disciplines (Rank 1)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 30 secs.
      https://www.wowhead.com/wotlk/spell=12312

    - Improved Disciplines (Rank 2)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 60 secs.
      https://www.wowhead.com/wotlk/spell=12803

    - Glyph of Shield Wall
      Reduces the cooldown on Shield Wall by 2 min, but Shield Wall now only reduces damage taken by 40%.
      https://www.wowhead.com/wotlk/spell=63329

    - Glyph of Shield Wall
      Reduces the cooldown on Shield Wall by 2 min, but Shield Wall now only reduces damage taken by 40%.
      https://www.wowhead.com/wotlk/spell=63952

    --]]

    [871] = { duration = 300, class = "WARRIOR", adjust = { Protection = -60 } }, -- Shield Wall

    [1161] = { duration = 180, class = "WARRIOR" }, -- Challenging Shout

    --[[ Whirlwind Modifiers

    - Glyph of Whirlwind
      Reduces the cooldown of your Whirlwind by 2 sec.
      https://www.wowhead.com/wotlk/spell=58370

    --]]

    [1680] = { duration = 10, class = "WARRIOR" }, -- Whirlwind

    --[[ Recklessness Modifiers

    - Improved Disciplines (Rank 1)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 30 secs.
      https://www.wowhead.com/wotlk/spell=12312

    - Improved Disciplines (Rank 2)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 60 secs.
      https://www.wowhead.com/wotlk/spell=12803

    - Intensify Rage (Rank 1)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 11%.
      https://www.wowhead.com/wotlk/spell=46908

    - Intensify Rage (Rank 2)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 22%.
      https://www.wowhead.com/wotlk/spell=46909

    - Intensify Rage (Rank 3)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 33%.
      https://www.wowhead.com/wotlk/spell=56924

    --]]

    [1719] = { duration = 300, class = "WARRIOR", adjust = { Protection = -60, Fury = -99 } }, -- Recklessness

    --[[ Shield Block Modifiers

    - Shield Mastery (Rank 1)
      Increases your block value by 15% and reduces the cooldown of your Shield Block ability by 10 sec.
      https://www.wowhead.com/wotlk/spell=29598

    - Shield Mastery (Rank 2)
      Increases your block value by 30% and reduces the cooldown of your Shield Block ability by 20 sec.
      https://www.wowhead.com/wotlk/spell=29599

    --]]

    [2565] = { duration = 60, class = "WARRIOR", adjust = { Protection = -20 } }, -- Shield Block

    --[[ Bloodrage Modifiers

    - Intensify Rage (Rank 1)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 11%.
      https://www.wowhead.com/wotlk/spell=46908

    - Intensify Rage (Rank 2)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 22%.
      https://www.wowhead.com/wotlk/spell=46909

    - Intensify Rage (Rank 3)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 33%.
      https://www.wowhead.com/wotlk/spell=56924

    --]]

    [2687] = { duration = 60, class = "WARRIOR", adjust = { Fury = -19.8 } }, -- Bloodrage

    [3411] = { duration = 30, class = "WARRIOR" }, -- Intervene

    [5246] = { duration = 120, class = "WARRIOR" }, -- Intimidating Shout

    [6343] = { duration = 6, class = "WARRIOR" }, -- Thunder Clap (Rank 1)
        [8198] = { parent = 6343 }, -- Thunder Clap (Rank 2)
        [8204] = { parent = 6343 }, -- Thunder Clap (Rank 3)
        [8205] = { parent = 6343 }, -- Thunder Clap (Rank 4)
        [11580] = { parent = 6343 }, -- Thunder Clap (Rank 5)
        [11581] = { parent = 6343 }, -- Thunder Clap (Rank 6)
        [25264] = { parent = 6343 }, -- Thunder Clap (Rank 7)
        [47501] = { parent = 6343 }, -- Thunder Clap (Rank 8)
        [47502] = { parent = 6343 }, -- Thunder Clap (Rank 9)

    [6552] = { duration = 10, class = "WARRIOR", default = true }, -- Pummel

    --[[ Revenge Modifiers

    - Unrelenting Assault (Rank 1)
      Reduces the cooldown of your Overpower and Revenge abilities by 2 secs and increases the damage done by both abilities by 10%. In addition, if you strike a player with Overpower while they are casting, their magical damage and healing will be reduced by 25% for 6 sec.
      https://www.wowhead.com/wotlk/spell=46859

    - Unrelenting Assault (Rank 2)
      Reduces the cooldown of your Overpower and Revenge abilities by 4 secs and increases the damage done by both abilities by 20%. In addition, if you strike a player with Overpower while they are casting, their magical damage and healing will be reduced by 50% for 6 sec.
      https://www.wowhead.com/wotlk/spell=46860

    --]]

    [6572] = { duration = 5, class = "WARRIOR", adjust = { Arms = -4} }, -- Revenge (Rank 1)
        [6574] = { parent = 6572 }, -- Revenge (Rank 2)
        [7379] = { parent = 6572 }, -- Revenge (Rank 3)
        [11600] = { parent = 6572 }, -- Revenge (Rank 4)
        [11601] = { parent = 6572 }, -- Revenge (Rank 5)
        [25288] = { parent = 6572 }, -- Revenge (Rank 6)
        [25269] = { parent = 6572 }, -- Revenge (Rank 7)
        [30357] = { parent = 6572 }, -- Revenge (Rank 8)
        [57823] = { parent = 6572 }, -- Revenge (Rank 9)

    --[[ Overpower Modifiers

    - Unrelenting Assault (Rank 1)
      Reduces the cooldown of your Overpower and Revenge abilities by 2 secs and increases the damage done by both abilities by 10%. In addition, if you strike a player with Overpower while they are casting, their magical damage and healing will be reduced by 25% for 6 sec.
      https://www.wowhead.com/wotlk/spell=46859

    - Unrelenting Assault (Rank 2)
      Reduces the cooldown of your Overpower and Revenge abilities by 4 secs and increases the damage done by both abilities by 20%. In addition, if you strike a player with Overpower while they are casting, their magical damage and healing will be reduced by 50% for 6 sec.
      https://www.wowhead.com/wotlk/spell=46860

    --]]

    [7384] = { duration = 5, class = "WARRIOR", adjust = { Arms = -4} }, -- Overpower

    --[[ Death Wish Modifiers

    - Intensify Rage (Rank 1)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 11%.
      https://www.wowhead.com/wotlk/spell=46908

    - Intensify Rage (Rank 2)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 22%.
      https://www.wowhead.com/wotlk/spell=46909

    - Intensify Rage (Rank 3)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 33%.
      https://www.wowhead.com/wotlk/spell=56924

    --]]

    [12292] = { duration = 180, class = "WARRIOR", adjust = -59.4 }, -- Death Wish

    --[[ Mortal Strike Modifiers

    - Improved Mortal Strike (Rank 1)
      Increases the damage caused by your Mortal Strike ability by 3% and reduces the cooldown by 0.3 sec.
      https://www.wowhead.com/wotlk/spell=35446

    - Improved Mortal Strike (Rank 2)
      Increases the damage caused by your Mortal Strike ability by 6% and reduces the cooldown by 0.7 sec.
      https://www.wowhead.com/wotlk/spell=35448

    - Improved Mortal Strike (Rank 3)
      Increases the damage caused by your Mortal Strike ability by 10% and reduces the cooldown by 1 sec.
      https://www.wowhead.com/wotlk/spell=35449

    --]]

    [12294] = { duration = 6, class = "WARRIOR", adjust = -1 }, -- Mortal Strike (Rank 1)
        [21551] = { parent = 12294 }, -- Mortal Strike (Rank 2)
        [21552] = { parent = 12294 }, -- Mortal Strike (Rank 3)
        [21553] = { parent = 12294 }, -- Mortal Strike (Rank 4)
        [25248] = { parent = 12294 }, -- Mortal Strike (Rank 5)
        [30330] = { parent = 12294 }, -- Mortal Strike (Rank 6)
        [47485] = { parent = 12294 }, -- Mortal Strike (Rank 7)
        [47486] = { parent = 12294 }, -- Mortal Strike (Rank 8)

    [12328] = { duration = 30, class = "WARRIOR" }, -- Sweeping Strikes

    [12809] = { duration = 30, class = "WARRIOR" }, -- Concussion Blow

    --[[ Last Stand Modifiers

    - Glyph of Last Stand
      Reduces the cooldown of your Last Stand ability by 1 min.
      https://www.wowhead.com/wotlk/spell=58376

    --]]

    [12975] = { duration = 180, class = "WARRIOR" }, -- Last Stand

    --[[ Berserker Rage Modifiers

    - Intensify Rage (Rank 1)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 11%.
      https://www.wowhead.com/wotlk/spell=46908

    - Intensify Rage (Rank 2)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 22%.
      https://www.wowhead.com/wotlk/spell=46909

    - Intensify Rage (Rank 3)
      Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by 33%.
      https://www.wowhead.com/wotlk/spell=56924

    --]]

    [18499] = { duration = 30, class = "WARRIOR", adjust = { Fury = -9.9 } }, -- Berserker Rage

    --[[ Retaliation Modifiers

    - Improved Disciplines (Rank 1)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 30 secs.
      https://www.wowhead.com/wotlk/spell=12312

    - Improved Disciplines (Rank 2)
      Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 60 secs.
      https://www.wowhead.com/wotlk/spell=12803

    --]]

    [20230] = { duration = 300, class = "WARRIOR", adjust = { Protection = -60 } }, -- Retaliation

    --[[ Intercept Modifiers

    - Intercept Cooldown Reduction (Rank 1)
      Reduces the cooldown of your Intercept ability by 5 sec.
      https://www.wowhead.com/wotlk/spell=22738

    - Improved Intercept (Rank 1)
      Reduces the cooldown of your Intercept ability by 5 sec.
      https://www.wowhead.com/wotlk/spell=29888

    - Improved Intercept (Rank 2)
      Reduces the cooldown of your Intercept ability by 10 sec.
      https://www.wowhead.com/wotlk/spell=29889

    --]]

    [20252] = { duration = 30, class = "WARRIOR", adjust = { Fury = -15, default = -5} }, -- Intercept

    [23881] = { duration = 4, class = "WARRIOR" }, -- Bloodthirst

    --[[ Spell Reflection Modifiers

    - Glyph of Spell Reflection
      Reduces the cooldown on Spell Reflection by 1 sec.
      https://www.wowhead.com/wotlk/spell=63328

    --]]

    [23920] = { duration = 10, class = "WARRIOR" }, -- Spell Reflection

    --[[ Shield Slam Modifiers

    - Sword and Board
      When your Devastate or Revenge ability deals damage they have a chance of refreshing the cooldown of your Shield Slam ability and reducing its cost by 100% for 5 sec.
      https://www.wowhead.com/wotlk/spell=50227

    --]]

    [23922] = { duration = 6, class = "WARRIOR" }, -- Shield Slam (Rank 1)
        [23923] = { parent = 23922 }, -- Shield Slam (Rank 2)
        [23924] = { parent = 23922 }, -- Shield Slam (Rank 3)
        [23925] = { parent = 23922 }, -- Shield Slam (Rank 4)
        [25258] = { parent = 23922 }, -- Shield Slam (Rank 5)
        [30356] = { parent = 23922 }, -- Shield Slam (Rank 6)
        [47487] = { parent = 23922 }, -- Shield Slam (Rank 7)
        [47488] = { parent = 23922 }, -- Shield Slam (Rank 8)

    --[[ Bladestorm Modifiers

    - Glyph of Bladestorm
      Reduces the cooldown on Bladestorm by 15 sec.
      https://www.wowhead.com/wotlk/spell=63324

    --]]

    [46924] = { duration = 90, class = "WARRIOR" }, -- Bladestorm

    --[[ Shockwave Modifiers

    - Glyph of Shockwave
      Reduces the cooldown on Shockwave by 3 sec.
      https://www.wowhead.com/wotlk/spell=63325

    --]]

    [46968] = { duration = 20, class = "WARRIOR", adjust = -3 }, -- Shockwave

    [55694] = { duration = 180, class = "WARRIOR" }, -- Enraged Regeneration

    [57755] = { duration = 60, class = "WARRIOR" }, -- Heroic Throw

    [60970] = { duration = 45, class = "WARRIOR" }, -- Heroic Fury

    [64382] = { duration = 300, class = "WARRIOR" }, -- Shattering Throw

    -- Death Knight

    --[[ Army of the Dead Modifiers

    - Night of the Dead (Rank 1)
      Reduces the cooldown on Raise Dead by 45 sec and the cooldown on Army of the Dead by 2 min. Also reduces the damage your pet takes from creature area of effect attacks by 45%.
      https://www.wowhead.com/wotlk/spell=55620

    - Night of the Dead (Rank 2)
      Reduces the cooldown on Raise Dead by 90 sec and the cooldown on Army of the Dead by 4 min. Also reduces the damage your pet takes from creature area of effect attacks by 90%.
      https://www.wowhead.com/wotlk/spell=55623

    --]]
    [42650] = { duration = 600, class = "DEATHKNIGHT", adjust = -240 }, -- Army of the Dead

    --[[ Death and Decay Modifiers

    - Morbidity (Rank 1)
      Increases the damage and healing of Death Coil by 5% and reduces the cooldown on Death and Decay by 5 sec.
      https://www.wowhead.com/wotlk/spell=48963

    - Morbidity (Rank 2)
      Increases the damage and healing of Death Coil by 10% and reduces the cooldown on Death and Decay by 10 sec.
      https://www.wowhead.com/wotlk/spell=49564

    - Morbidity (Rank 3)
      Increases the damage and healing of Death Coil by 15% and reduces the cooldown on Death and Decay by 15 sec.
      https://www.wowhead.com/wotlk/spell=49565

    --]]

    [43265] = { duration = 30, class = "DEATHKNIGHT" }, -- Death and Decay (Rank 1)
        [49936] = { parent = 43265 }, -- Death and Decay (Rank 2)
        [49937] = { parent = 43265 }, -- Death and Decay (Rank 3)
        [49938] = { parent = 43265 }, -- Death and Decay (Rank 4)

    [45529] = { duration = 60, class = "DEATHKNIGHT" }, -- Blood Tap

    --[[ Raise Dead Modifiers

    - Master of Ghouls
      Reduces the cooldown on Raise Dead by 60 sec, and the Ghoul summoned by your Raise Dead spell is considered a pet under your control. Unlike normal Death Knight Ghouls, your pet does not have a limited duration.
      https://www.wowhead.com/wotlk/spell=52143

    - Night of the Dead (Rank 1)
      Reduces the cooldown on Raise Dead by 45 sec and the cooldown on Army of the Dead by 2 min. Also reduces the damage your pet takes from creature area of effect attacks by 45%.
      https://www.wowhead.com/wotlk/spell=55620

    - Night of the Dead (Rank 2)
      Reduces the cooldown on Raise Dead by 90 sec and the cooldown on Army of the Dead by 4 min. Also reduces the damage your pet takes from creature area of effect attacks by 90%.
      https://www.wowhead.com/wotlk/spell=55623

    --]]

    [46584] = { duration = 180, class = "DEATHKNIGHT", adjust = -150 }, -- Raise Dead

    --[[ Strangulate Modifiers

    - Glyph of Strangulate
      Reduces the cooldown of your Strangulate by 20 sec.
      https://www.wowhead.com/wotlk/spell=58618

    --]]

    [47476] = { duration = 120, class = "DEATHKNIGHT" }, -- Strangulate

    [47528] = { duration = 10, class = "DEATHKNIGHT", default = true }, -- Mind Freeze

    [47568] = { duration = 300, class = "DEATHKNIGHT" }, -- Empower Rune Weapon

    [48707] = { duration = 45, class = "DEATHKNIGHT" }, -- Anti-Magic Shell

    [48743] = { duration = 120, class = "DEATHKNIGHT" }, -- Death Pact

    [48792] = { duration = 120, class = "DEATHKNIGHT" }, -- Icebound Fortitude

    --[[ Rune Tap Modifiers

    - Improved Rune Tap (Rank 1)
      Increases the health provided by Rune Tap by 33% and lowers its cooldown by 10 sec.
      https://www.wowhead.com/wotlk/spell=48985

    - Improved Rune Tap (Rank 2)
      Increases the health provided by Rune Tap by 66% and lowers its cooldown by 20 sec.
      https://www.wowhead.com/wotlk/spell=49488

    - Improved Rune Tap (Rank 3)
      Increases the health provided by Rune Tap by 100% and lowers its cooldown by 30 sec.
      https://www.wowhead.com/wotlk/spell=49489

    --]]

    [48982] = { duration = 60, class = "DEATHKNIGHT", adjust = -30 }, -- Rune Tap

    [49005] = { duration = 180, class = "DEATHKNIGHT" }, -- Mark of Blood

    [49016] = { duration = 180, class = "DEATHKNIGHT" }, -- Unholy Frenzy

    [49028] = { duration = 90, class = "DEATHKNIGHT" }, -- Dancing Rune Weapon

    [49039] = { duration = 120, class = "DEATHKNIGHT" }, -- Lichborne

    [49158] = { duration = 5, class = "DEATHKNIGHT" }, -- Corpse Explosion (Rank 1)
        [51325] = { parent = 49158 }, -- Corpse Explosion (Rank 2)
        [51326] = { parent = 49158 }, -- Corpse Explosion (Rank 3)
        [51327] = { parent = 49158 }, -- Corpse Explosion (Rank 4)
        [51328] = { parent = 49158 }, -- Corpse Explosion (Rank 5)

    [49184] = { duration = 8, class = "DEATHKNIGHT" }, -- Howling Blast (Rank 1), when death knight gains Rime buff, the cooldown of Howling Blast is reset
        [51409] = { parent = 49184 }, -- Howling Blast (Rank 2)
        [51410] = { parent = 49184 }, -- Howling Blast (Rank 3)
        [51411] = { parent = 49184 }, -- Howling Blast (Rank 4)

    [49203] = { duration = 60, class = "DEATHKNIGHT" }, -- Hungering Cold

    [49206] = { duration = 180, class = "DEATHKNIGHT" }, -- Summon Gargoyle

    [49222] = { duration = 60, class = "DEATHKNIGHT" }, -- Bone Shield

    --[[ Death Grip Modifiers

    - Unholy Command (Rank 1)
      Reduces the cooldown of your Death Grip ability by 5 sec.
      https://www.wowhead.com/wotlk/spell=49588

    - Unholy Command (Rank 2)
      Reduces the cooldown of your Death Grip ability by 10 sec.
      https://www.wowhead.com/wotlk/spell=49589

    --]]

    [49576] = { duration = 35, class = "DEATHKNIGHT", adjust = -10  }, -- Death Grip

    [49796] = { duration = 120, class = "DEATHKNIGHT" }, -- Deathchill

    [51052] = { duration = 120, class = "DEATHKNIGHT" }, -- Anti-Magic Zone

    [51271] = { duration = 60, class = "DEATHKNIGHT" }, -- Unbreakable Armor

    [55233] = { duration = 60, class = "DEATHKNIGHT" }, -- Vampiric Blood

    [56222] = { duration = 8, class = "DEATHKNIGHT" }, -- Dark Command

    [57330] = { duration = 20, class = "DEATHKNIGHT" }, -- Horn of Winter (Rank 1)
        [57623] = { parent = 57330 }, -- Horn of Winter (Rank 2)

    [61999] = { duration = 600, class = "DEATHKNIGHT" }, -- Raise Ally

    [63560] = { duration = 10, class = "DEATHKNIGHT" }, -- Ghoul Frenzy

    -- Death Knight Pets

    [47481] = { duration = 60, class = "DEATHKNIGHT" }, -- Gnaw
    [47484] = { duration = 45, class = "DEATHKNIGHT" }, -- Huddle
    [47482] = { duration = 20, class = "DEATHKNIGHT" }, -- Leap

}
