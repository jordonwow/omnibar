-- This file was brought to you by:
-- https://github.com/muleyo
-- https://github.com/ManneN1 - special thanks for the MoP-specific optimizations
--
-- Be sure to thank them if you see them on your server!

local addonName, addon = ...

addon.MAX_ARENA_SIZE = 5

addon.Shared = {
  -- PvP Trinket, Will of the Forsaken
  {
    spells = { 42292, 7744 },
    amount = 45,
  },

  -- Feral Charge - Bear, Feral Charge - Cat
  {
    spells = { 16979, 49376 },
    amount = 15,
  },

  -- Skull Bash (Bear)
  {
    spells = { 80965, 80964 },
    amount = 15
  }
}

addon.Resets = {
  [2139]   = { spellID = 2139, interrupt = 4 },                                                                  -- Inline Counterspell decreases CD by 4sec (2-set PvP bonus)
  [93985]  = { spellID = 5229, interrupt = true },                                                               -- Inline Skull Bash resets Enrage (4-set PvP bonus)
  [49576]  = { skipTimeFromFirstUse = 3, useBeforeCD = true },                                                   -- DK 4-set skips usages of Death Grip if used within 3sec of the first use
  [1044]   = { spellID = { 1044, 1022 }, skipFirst = 1, useBeforeCD = true, blockEvent = "SPELL_AURA_APPLIED" }, -- Hand of Freedom w. Clemency
  [1022]   = { spellID = { 1044, 1022 }, skipFirst = 1, useBeforeCD = true, blockEvent = "SPELL_AURA_APPLIED" }, -- Hand of Protection w. Clemency
  [6940]   = { spellID = { 1044, 1022 }, skipFirst = 1, useBeforeCD = true, blockEvent = "SPELL_AURA_APPLIED" }, -- Hand of Sacrifice w. Clemency
  [642]    = { spellID = { 498, 633, 642, }, reduction = 0.5, useBeforeCD = true },                              -- Divine Shield w. Unbreakable Spirit
  [633]    = { spellID = { 498, 633, 642, }, reduction = 0.5, useBeforeCD = true },                              -- Lay on Hands w. Unbreakable Spirit
  [498]    = { spellID = { 498, 633, 642, }, reduction = 0.5, useBeforeCD = true },                              -- Divine Protection w. Unbreakable Spirit
  [111897] = { 119910 },                                                                                         -- Grimoire: Felhunter
  [691]    = { 19647 },                                                                                          -- Summon Felhunter: Spell Lock
  [81162]  = { 48982 },                                                                                          -- Will of the Necropolis
  [11129]  = { 108853 },                                                                                         -- Combustion
  [11958]  = { 11426, 6143, 122, 45438, 12472, 31687, 44572, 120 },                                              -- Cold Snap
  [14185]  = { 2983, 1856, 31224, 5277, 51722 },                                                                 -- Preparation
  [108285] = { 8143, 8177, 108269, 108270, 108273, 2484, 51485, 5394 },                                          -- Call of the Elements
}

addon.Cooldowns = {
  -- ###################################################
  -- ################ General Abilities ################
  -- ###################################################
  [42292]  = { duration = 120, class = "GENERAL", icon = 133453 }, -- PvP Trinket
  [7744]   = { duration = 120, class = "GENERAL" },                -- Will of the Forsaken
  [25046]  = { duration = 120, class = "GENERAL" },                -- Arcane Torrent (Energy)
  [28730]  = { parent = 25046 },                                   -- Arcane Torrent (Mana)
  [50613]  = { parent = 25046 },                                   -- Arcane Torrent (Runic Power)
  [20594]  = { duration = 120, class = "GENERAL" },                -- Stoneform
  [20549]  = { duration = 120, class = "GENERAL" },                -- War Stomp
  [26297]  = { duration = 180, class = "GENERAL" },                -- Berserking
  [20572]  = { duration = 120, class = "GENERAL" },                -- Blood Fury
  [33697]  = { parent = 20572 },
  [33702]  = { parent = 20572 },
  [54998]  = { duration = 60, class = "GENERAL" }, -- Hand-Mounted Pyro Rocket

  -- ###################################################
  -- ##################### Priest  #####################
  -- ###################################################

  [15487]  = { class = "PRIEST", duration = 45, specID = { 258 }, default = true }, -- Silence
  [6346]   = { class = "PRIEST", duration = 180 },                                  -- Fear Ward
  [33076]  = { class = "PRIEST", duration = 10 },                                   -- Prayer of Mending
  [64901]  = { class = "PRIEST", duration = 360 },                                  -- Hymn of Hope
  [8122]   = { class = "PRIEST", duration = 27 },                                   -- Psychic Scream
  [34433]  = { class = "PRIEST", duration = 180 },                                  -- Shadowfiend
  [123040] = { parent = 34433, duration = 60 },                                     -- Mindbender
  [73325]  = { class = "PRIEST", duration = 90 },                                   -- Leap of Faith
  [32375]  = { class = "PRIEST", duration = 15 },                                   -- Mass Dispel
  [108920] = { class = "PRIEST", duration = 30 },                                   -- Void Tendrils
  [108921] = { class = "PRIEST", duration = 45 },                                   -- Psyfiend
  [114239] = { class = "PRIEST", duration = 30 },                                   -- Phantasm
  [121536] = { class = "PRIEST", duration = 10, charges = 3 },                      -- Angelic Feather
  [19236]  = { class = "PRIEST", duration = 120 },                                  -- Desperate Prayer
  [112833] = { class = "PRIEST", duration = 30 },                                   -- Spectral Guise
  [108945] = { class = "PRIEST", duration = 90 },                                   -- Angelic Bulwark
  [10060]  = { class = "PRIEST", duration = 120 },                                  -- Power Infusion
  [121135] = { class = "PRIEST", duration = 25 },                                   -- Cascade
  [110744] = { class = "PRIEST", duration = 15 },                                   -- Divine Star
  [120517] = { class = "PRIEST", duration = 40 },                                   -- Halo
  [14914]  = { class = "PRIEST", duration = 10, specID = { 256, 257 } },            -- Holy Fire
  [81700]  = { class = "PRIEST", duration = 30, specID = { 256 } },                 -- Archangel
  [47540]  = { class = "PRIEST", duration = 9, specID = { 256 } },                  -- Penance
  [89485]  = { class = "PRIEST", duration = 45, specID = { 256 } },                 -- Inner Focus
  [33206]  = { class = "PRIEST", duration = 180, specID = { 256 } },                -- Pain Suppression
  [62618]  = { class = "PRIEST", duration = 180, specID = { 256 } },                -- Power Word: Barrier
  [109964] = { class = "PRIEST", duration = 60, specID = { 256 } },                 -- Spirit Shell
  [527]    = { class = "PRIEST", duration = 8, specID = { 256, 257 } },             -- Purify
  [108968] = { class = "PRIEST", duration = 300, specID = { 256, 257 } },           -- Void Shift
  [47788]  = { class = "PRIEST", duration = 180, specID = { 257 } },                -- Guardian Spirit
  [724]    = { class = "PRIEST", duration = 180, specID = { 257 } },                -- Lightwell
  [64843]  = { class = "PRIEST", duration = 180, specID = { 257 } },                -- Divine Hymn
  [88625]  = { class = "PRIEST", duration = 30, specID = { 257 } },                 -- Holy Word: Chastise
  [34861]  = { class = "PRIEST", duration = 10, specID = { 257 } },                 -- Circle of Healing
  [47585]  = { class = "PRIEST", duration = 120, specID = { 258 } },                -- Dispersion
  [64044]  = { class = "PRIEST", duration = 45, specID = { 258 } },                 -- Psychic Horror
  [113277] = { class = "PRIEST", duration = 480, specID = { 258 } },                -- Symbiosis/Tranquility

  -- ###################################################
  -- ##################### Warlock #####################
  -- ###################################################

  [19647]  = { class = "WARLOCK", duration = 24, default = true },                -- Spell Lock (Felhunter)
  [20707]  = { class = "WARLOCK", duration = 600 },                               -- Soulstone
  [6229]   = { class = "WARLOCK", duration = 30 },                                -- Twilight Ward
  [104773] = { class = "WARLOCK", duration = 180 },                               -- Unending Resolve
  [87385]  = { class = "WARLOCK", duration = 60 },                                -- Seed of Corruption
  [48020]  = { class = "WARLOCK", duration = 25 },                                -- Demonic Circle: Teleport
  [108359] = { class = "WARLOCK", duration = 120 },                               -- Dark Regeneration
  [5484]   = { class = "WARLOCK", duration = 40 },                                -- Howl of Terror
  [6789]   = { class = "WARLOCK", duration = 45 },                                -- Mortal Coil
  [30283]  = { class = "WARLOCK", duration = 30 },                                -- Shadowfury
  [110913] = { class = "WARLOCK", duration = 180 },                               -- Dark Bargain
  [108416] = { class = "WARLOCK", duration = 60 },                                -- Sacrificial Pact
  [111397] = { class = "WARLOCK", duration = 30 },                                -- Blood Horror
  [108482] = { class = "WARLOCK", duration = 60 },                                -- Unbound Will
  [108501] = { class = "WARLOCK", duration = 120 },                               -- Grimoire of Service
  [108505] = { class = "WARLOCK", duration = 120 },                               -- Archimonde's Vengeance
  [113860] = { class = "WARLOCK", duration = 120, specID = { 265 } },             -- Dark Soul: Misery
  [113295] = { class = "WARLOCK", duration = 10, specID = { 265, 266, 267 } },    -- Symbiosis/Rejuvenation
  [109151] = { class = "WARLOCK", duration = 10, specID = { 266 } },              -- Demonic Leap
  [113861] = { class = "WARLOCK", duration = 120, specID = { 266 } },             -- Dark Soul: Knowledge
  [103967] = { class = "WARLOCK", duration = 12, specID = { 266 } },              -- Carrion Swarm
  [105174] = { class = "WARLOCK", duration = 15, specID = { 266 }, charges = 2 }, -- Hand of Gul'dan
  [80240]  = { class = "WARLOCK", duration = 25, specID = { 267 } },              -- Havoc
  [120451] = { class = "WARLOCK", duration = 60, specID = { 267 } },              -- Flames of Xoroth
  [113858] = { class = "WARLOCK", duration = 120, specID = { 267 } },             -- Dark Soul: Instability
  [17962]  = { class = "WARLOCK", duration = 12, specID = { 267 }, charges = 2 }, -- Conflagrate
  [89766]  = { class = "WARLOCK", duration = 30 },                                -- Axe Toss
  [89751]  = { class = "WARLOCK", duration = 45 },                                -- Felstorm
  [30151]  = { class = "WARLOCK", duration = 15 },                                -- Pursuit
  [19505]  = { class = "WARLOCK", duration = 15 },                                -- Devour Magic
  [115284] = { class = "WARLOCK", duration = 15 },                                -- Clone Magic
  [115276] = { class = "WARLOCK", duration = 20 },                                -- Sear Magic
  [119899] = { class = "WARLOCK", duration = 30 },                                -- Cauterize Master
  [89792]  = { class = "WARLOCK", duration = 20 },                                -- Flee
  [89808]  = { class = "WARLOCK", duration = 10 },                                -- Single Magic
  [118093] = { class = "WARLOCK", duration = 60 },                                -- Disarm
  [17767]  = { class = "WARLOCK", duration = 120 },                               -- Shadow Bulwark
  [115831] = { class = "WARLOCK", duration = 45 },                                -- Wrathstorm
  [6360]   = { class = "WARLOCK", duration = 25 },                                -- Whiplash
  [115770] = { parent = 6360 },                                                   -- Fellash
  [119910] = { parent = 19647 },                                                  -- Spell Lock (Command Demon)
  [119911] = { parent = 19647 },                                                  -- Optical Blast (Command Demon)
  [115781] = { parent = 19647 },                                                  -- Optical Blast (Observer)
  [132409] = { parent = 19647 },                                                  -- Spell Lock (Grimoire of Sacrifice)

  -- ###################################################
  -- ##################### Shaman  #####################
  -- ###################################################

  [57994]  = { class = "SHAMAN", duration = 12, default = true },        -- Wind Shear
  [114049] = { class = "SHAMAN", duration = 180 },                       -- Ascendance
  [2825]   = { class = "SHAMAN", duration = 300 },                       -- Bloodlust
  [108269] = { class = "SHAMAN", duration = 45 },                        -- Capacitor Totem
  [51886]  = { class = "SHAMAN", duration = 8 },                         -- Cleanse Spirit
  [2062]   = { class = "SHAMAN", duration = 300 },                       -- Earth Elemental Totem
  [8042]   = { class = "SHAMAN", duration = 6 },                         -- Earth Shock
  [2484]   = { class = "SHAMAN", duration = 30 },                        -- Earthbind Totem
  [2894]   = { class = "SHAMAN", duration = 300 },                       -- Fire Elemental Totem
  [8050]   = { class = "SHAMAN", duration = 6 },                         -- Flame Shock
  [8056]   = { class = "SHAMAN", duration = 6 },                         -- Frost Shock
  [8177]   = { class = "SHAMAN", duration = 25 },                        -- Grounding Totem
  [73920]  = { class = "SHAMAN", duration = 10 },                        -- Healing Rain
  [5394]   = { class = "SHAMAN", duration = 30 },                        -- Healing Stream Totem
  [51514]  = { class = "SHAMAN", duration = 45 },                        -- Hex
  [73899]  = { class = "SHAMAN", duration = 8 },                         -- Primal Strike
  [79206]  = { class = "SHAMAN", duration = 120 },                       -- Spiritwalker's Grace
  [115356] = { class = "SHAMAN", duration = 8 },                         -- Stormblast
  [120668] = { class = "SHAMAN", duration = 300 },                       -- Stormlash Totem
  [8143]   = { class = "SHAMAN", duration = 60 },                        -- Tremor Totem
  [31616]  = { class = "SHAMAN", duration = 30 },                        -- Nature's Guardian
  [73680]  = { class = "SHAMAN", duration = 15 },                        -- Unleash Elements
  [73685]  = { class = "SHAMAN", duration = 15 },                        -- Unleash Life
  [108281] = { class = "SHAMAN", duration = 120 },                       -- Ancestral Guidance
  [16188]  = { class = "SHAMAN", duration = 90 },                        -- Ancestral Swiftness
  [108271] = { class = "SHAMAN", duration = 90 },                        -- Astral Shift
  [108285] = { class = "SHAMAN", duration = 180 },                       -- Call of the Elements
  [51485]  = { class = "SHAMAN", duration = 30 },                        -- Earthgrab Totem
  [117014] = { class = "SHAMAN", duration = 12 },                        -- Elemental Blast
  [16166]  = { class = "SHAMAN", duration = 90 },                        -- Elemental Mastery
  [108280] = { class = "SHAMAN", duration = 180 },                       -- Healing Tide Totem
  [108270] = { class = "SHAMAN", duration = 60 },                        -- Stone Bulwark Totem
  [108287] = { class = "SHAMAN", duration = 10 },                        -- Totem Projection
  [108273] = { class = "SHAMAN", duration = 60 },                        -- Windwalk Totem
  [61882]  = { class = "SHAMAN", duration = 10, specID = { 262 } },      -- Earthquake
  [51505]  = { class = "SHAMAN", duration = 8, specID = { 262 } },       -- Lava Burst
  [51490]  = { class = "SHAMAN", duration = 22, specID = { 262 } },      -- Thunderstorm
  [113286] = { class = "SHAMAN", duration = 60, specID = { 262, 263 } }, -- Symbiosis/Solar Beam
  [51533]  = { class = "SHAMAN", duration = 120, specID = { 263 } },     -- Feral Spirit
  [60103]  = { class = "SHAMAN", duration = 10, specID = { 263 } },      -- Lava Lash
  [30823]  = { class = "SHAMAN", duration = 60, specID = { 262, 263 } }, -- Shamanistic Rage
  [58875]  = { class = "SHAMAN", duration = 60, specID = { 263 } },      -- Spirit Walk
  [17364]  = { class = "SHAMAN", duration = 8, specID = { 263 } },       -- Stormstrike
  [16190]  = { class = "SHAMAN", duration = 180, specID = { 264 } },     -- Mana Tide Totem
  [77130]  = { class = "SHAMAN", duration = 8, specID = { 264 } },       -- Purify Spirit
  [61295]  = { class = "SHAMAN", duration = 6, specID = { 264 } },       -- Riptide
  [98008]  = { class = "SHAMAN", duration = 180, specID = { 264 } },     -- Spirit Link Totem

  -- ###################################################
  -- ##################### Paladin #####################
  -- ###################################################

  [96231]  = { class = "PALADIN", duration = 15, default = true },                  -- Rebuke
  [31935]  = { class = "PALADIN", duration = 15, specID = { 66 }, default = true }, -- Avenger's Shield
  [31884]  = { class = "PALADIN", duration = 180 },                                 -- Avenging Wrath
  [115750] = { class = "PALADIN", duration = 120 },                                 -- Blinding Light
  [4987]   = { class = "PALADIN", duration = 8 },                                   -- Cleanse
  [31821]  = { class = "PALADIN", duration = 180 },                                 -- Devotion Aura
  [498]    = { class = "PALADIN", duration = 60 },                                  -- Divine Protection
  [642]    = { class = "PALADIN", duration = 300 },                                 -- Divine Shield
  [853]    = { class = "PALADIN", duration = 60 },                                  -- Hammer of Justice
  [24275]  = { class = "PALADIN", duration = 6 },                                   -- Hammer of Wrath
  [1044]   = { class = "PALADIN", duration = 25 },                                  -- Hand of Freedom
  [1022]   = { class = "PALADIN", duration = 300 },                                 -- Hand of Protection
  [6940]   = { class = "PALADIN", duration = 120 },                                 -- Hand of Sacrifice
  [20271]  = { class = "PALADIN", duration = 6 },                                   -- Judgement
  [633]    = { class = "PALADIN", duration = 600 },                                 -- Lay on Hands
  [10326]  = { class = "PALADIN", duration = 15 },                                  -- Turn Evil
  [114157] = { class = "PALADIN", duration = 60 },                                  -- Execution Sentence
  [105593] = { class = "PALADIN", duration = 30 },                                  -- Fist of Justice
  [114039] = { class = "PALADIN", duration = 30 },                                  -- Hand of Purify
  [105809] = { class = "PALADIN", duration = 120 },                                 -- Holy Avenger
  [114165] = { class = "PALADIN", duration = 20 },                                  -- Holy Prism
  [114158] = { class = "PALADIN", duration = 60 },                                  -- Light's Hammer
  [20066]  = { class = "PALADIN", duration = 15 },                                  -- Repentance
  [20925]  = { class = "PALADIN", duration = 6 },                                   -- Sacred Shield
  [85499]  = { class = "PALADIN", duration = 45 },                                  -- Speed of Light
  [31842]  = { class = "PALADIN", duration = 180, specID = { 65 } },                -- Divine Favor
  [54428]  = { class = "PALADIN", duration = 120, specID = { 65 } },                -- Divine Plea
  [86669]  = { class = "PALADIN", duration = 180, specID = { 65 } },                -- Guardian of Ancient Kings
  [20473]  = { class = "PALADIN", duration = 6, specID = { 65 } },                  -- Holy Shock
  [31850]  = { class = "PALADIN", duration = 180, specID = { 66 } },                -- Ardent Defender
  [26573]  = { class = "PALADIN", duration = 9, specID = { 66 } },                  -- Consecration
  [86659]  = { class = "PALADIN", duration = 180, specID = { 66 } },                -- Guardian of Ancient Kings
  [119072] = { class = "PALADIN", duration = 9, specID = { 66 } },                  -- Holy Wrath
  [113075] = { class = "PALADIN", duration = 60, specID = { 66 } },                 -- Symbiosis/Barkskin
  [879]    = { class = "PALADIN", duration = 15, specID = { 70 } },                 -- Exorcism
  [86698]  = { class = "PALADIN", duration = 180, specID = { 70 } },                -- Guardian of Ancient Kings

  -- ###################################################
  -- ##################### Hunter  #####################
  -- ###################################################

  [34490]  = { class = "HUNTER", duration = 24, specID = { 254 }, default = true }, -- Silencing Shot
  [147362] = { class = "HUNTER", duration = 24, specID = { 253 }, default = true }, -- Counter Shot
  [5116]   = { class = "HUNTER", duration = 5 },                                    -- Concussive Shot
  [781]    = { class = "HUNTER", duration = 20 },                                   -- Disengage
  [19503]  = { class = "HUNTER", duration = 30 },                                   -- Scatter Shot
  [1499]   = { class = "HUNTER", duration = { default = 30, [255] = 24, } },        -- Freezing Trap
  [60192]  = { parent = 1499 },                                                     -- Freezing Trap (Trap Launcher)
  [13813]  = { class = "HUNTER", duration = { default = 30, [255] = 24 } },         -- Explosive Trap
  [82939]  = { parent = 13813 },                                                    -- Explosive Trap (Trap Launcher)
  [13809]  = { class = "HUNTER", duration = { default = 30, [255] = 24 } },         -- Ice Trap
  [82941]  = { parent = 13809 },                                                    -- Ice Trap (Trap Launcher)
  [34600]  = { class = "HUNTER", duration = { default = 30, [255] = 24 } },         -- Snake Trap
  [82948]  = { parent = 34600 },                                                    -- Snake Trap (Trap Launcher)
  [53351]  = { class = "HUNTER", duration = 10 },                                   -- Kill Shot
  [1543]   = { class = "HUNTER", duration = 20 },                                   -- Flare
  [3045]   = { class = "HUNTER", duration = 180 },                                  -- Rapid Fire
  [53271]  = { class = "HUNTER", duration = 45 },                                   -- Master's Call
  [19263]  = { class = "HUNTER", duration = 180, charges = 2 },                     -- Deterrence
  [51753]  = { class = "HUNTER", duration = 60 },                                   -- Camouflage
  [121818] = { class = "HUNTER", duration = 300 },                                  -- Stampede
  [109248] = { class = "HUNTER", duration = 45 },                                   -- Binding Shot
  [19386]  = { class = "HUNTER", duration = 45 },                                   -- Wyvern Sting
  [109304] = { class = "HUNTER", duration = 120 },                                  -- Exhilaration
  [120679] = { class = "HUNTER", duration = 30 },                                   -- Dire Beast
  [82726]  = { class = "HUNTER", duration = 30 },                                   -- Fervor
  [131894] = { class = "HUNTER", duration = 120 },                                  -- A Murder of Crows
  [130392] = { class = "HUNTER", duration = 20 },                                   -- Blink Strike
  [120697] = { class = "HUNTER", duration = 90 },                                   -- Lynx Rush
  [120360] = { class = "HUNTER", duration = 30 },                                   -- Barrage
  [117050] = { class = "HUNTER", duration = 15 },                                   -- Glaive Toss
  [109259] = { class = "HUNTER", duration = 45 },                                   -- Powershot
  [19577]  = { class = "HUNTER", duration = 60 },                                   -- Intimidation
  [34026]  = { class = "HUNTER", duration = 6, specID = { 253 } },                  -- Kill Command
  [19574]  = { class = "HUNTER", duration = 60, specID = { 253 } },                 -- Bestial Wrath
  [113073] = { class = "HUNTER", duration = 180, specID = { 253, 254, 255 } },      -- Symbiosis/Dash
  [53209]  = { class = "HUNTER", duration = 9, specID = { 254 } },                  -- Chimera Shot
  [53301]  = { class = "HUNTER", duration = 6, specID = { 255 } },                  -- Explosive Shot
  [1742]   = { class = "HUNTER", duration = 45 },                                   -- Cower
  [53401]  = { class = "HUNTER", duration = 90 },                                   -- Rabid
  [55709]  = { class = "HUNTER", duration = 480 },                                  -- Heart of the Phoenix
  [61684]  = { class = "HUNTER", duration = 32 },                                   -- Dash
  [53478]  = { class = "HUNTER", duration = 360 },                                  -- Last Stand
  [61685]  = { class = "HUNTER", duration = 25 },                                   -- Charge
  [63900]  = { class = "HUNTER", duration = 10 },                                   -- Thunderstomp
  [53480]  = { class = "HUNTER", duration = 60 },                                   -- Roar of Sacrifice
  [53490]  = { class = "HUNTER", duration = 180 },                                  -- Bullheaded
  [50245]  = { class = "HUNTER", duration = 40 },                                   -- Dash
  [50285]  = { class = "HUNTER", duration = 25 },                                   -- Dust Cloud
  [50541]  = { class = "HUNTER", duration = 60 },                                   -- Clench
  [126423] = { class = "HUNTER", duration = 120 },                                  -- Petrifying Gaze
  [137798] = { class = "HUNTER", duration = 30 },                                   -- Reflective Armor Plating
  [24844]  = { class = "HUNTER", duration = 30 },                                   -- Lightning Breath
  [26064]  = { class = "HUNTER", duration = 60 },                                   -- Shell Shield
  [34889]  = { class = "HUNTER", duration = 30 },                                   -- Fire Breath
  [35346]  = { class = "HUNTER", duration = 15 },                                   -- Time Warp
  [4167]   = { class = "HUNTER", duration = 40 },                                   -- Web
  [50433]  = { class = "HUNTER", duration = 10 },                                   -- Ankle Crack
  [50479]  = { class = "HUNTER", duration = 40 },                                   -- Nether Shock
  [50519]  = { class = "HUNTER", duration = 120 },                                  -- Sonic Blast
  [90327]  = { class = "HUNTER", duration = 40 },                                   -- Lock Jaw
  [90339]  = { class = "HUNTER", duration = 60 },                                   -- Harden Carapace
  [126402] = { class = "HUNTER", duration = 10 },                                   -- Trample
  [26090]  = { class = "HUNTER", duration = 30 },                                   -- Pummel
  [50318]  = { class = "HUNTER", duration = 60 },                                   -- Serenity Dust
  [56626]  = { class = "HUNTER", duration = 90 },                                   -- Sting
  [90337]  = { class = "HUNTER", duration = 120 },                                  -- Bad Manner
  [126355] = { class = "HUNTER", duration = 120 },                                  -- Paralyzing Quill
  [54706]  = { class = "HUNTER", duration = 40 },                                   -- Venom Web Spray
  [91644]  = { class = "HUNTER", duration = 60 },                                   -- Snatch
  [126393] = { class = "HUNTER", duration = 600 },                                  -- Eternal Guardian
  [54644]  = { class = "HUNTER", duration = 10 },                                   -- Frost Breath
  [93433]  = { class = "HUNTER", duration = 14 },                                   -- Burrow Attack
  [90314]  = { class = "HUNTER", duration = 10 },                                   -- Tailspin
  [90355]  = { class = "HUNTER", duration = 360 },                                  -- Ancient Hysteria
  [58604]  = { class = "HUNTER", duration = 8 },                                    -- Lava Breath
  [96201]  = { class = "HUNTER", duration = 90 },                                   -- Web Wrap
  [126246] = { class = "HUNTER", duration = 120 },                                  -- Lullaby
  [50274]  = { class = "HUNTER", duration = 8 },                                    -- Spore Cloud
  [93434]  = { class = "HUNTER", duration = 90 },                                   -- Horn Toss
  [90361]  = { class = "HUNTER", duration = 30 },                                   -- Spirit Mend

  -- ###################################################
  -- ###################### Druid ######################
  -- ###################################################

  [80965]  = { class = "DRUID", duration = 15, specID = { 103, 104 }, default = true }, -- Skull Bash
  [78675]  = { class = "DRUID", duration = 60, specID = { 102 }, default = true },      -- Solar Beam
  [22812]  = { class = "DRUID", duration = 60 },                                        -- Barkskin
  [1850]   = { class = "DRUID", duration = 180 },                                       -- Dash
  [29166]  = { class = "DRUID", duration = 180 },                                       -- Innervate
  [106922] = { class = "DRUID", duration = 180 },                                       -- Might of the Ursoc
  [16689]  = { class = "DRUID", duration = 60 },                                        -- Nature's Grasp
  [77761]  = { class = "DRUID", duration = 120 },                                       -- Stampeding Roar
  [740]    = { class = "DRUID", duration = 480 },                                       -- Tranquility
  [102351] = { class = "DRUID", duration = 30 },                                        -- Cenarion Ward
  [99]     = { class = "DRUID", duration = 30 },                                        -- Disorienting Roar
  [102280] = { class = "DRUID", duration = 30 },                                        -- Displacer Beast
  [102401] = { class = "DRUID", duration = 15 },                                        -- Wild Charge
  [16979]  = { parent = 102401 },                                                       -- Wild Charge Bear
  [49376]  = { parent = 102401 },                                                       -- Wild Charge Cat
  [102383] = { parent = 102401 },                                                       -- Wild Charge Moonkin
  [102416] = { parent = 102401 },                                                       -- Wild Charge Aquatic
  [102417] = { parent = 102401 },                                                       -- Wild Charge Travel
  [106731] = { class = "DRUID", duration = 180 },                                       -- Incarnation
  [33891]  = { parent = 106731 },                                                       -- Incarnation Restoration
  [102543] = { parent = 106731 },                                                       -- Incarnation Feral
  [102558] = { parent = 106731 },                                                       -- Incarnation Guardian
  [102560] = { parent = 106731 },                                                       -- Incarnation Balance
  [106737] = { class = "DRUID", duration = 20, charges = 3 },                           -- Force of Nature
  [33831]  = { parent = 106737 },                                                       -- Force of Nature Balance
  [102693] = { parent = 106737 },                                                       -- Force of Nature Restoration
  [102703] = { parent = 106737 },                                                       -- Force of Nature Feral
  [102706] = { parent = 106737 },                                                       -- Force of Nature Guardian
  [108288] = { class = "DRUID", duration = 360 },                                       -- Heart of the Wild
  [108291] = { parent = 108288 },                                                       -- Heart of the Wild Balance
  [108292] = { parent = 108288 },                                                       -- Heart of the Wild Feral
  [108293] = { parent = 108288 },                                                       -- Heart of the Wild Guardian
  [108294] = { parent = 108288 },                                                       -- Heart of the Wild Restoration
  [102359] = { class = "DRUID", duration = 30 },                                        -- Mass Entanglement
  [5211]   = { class = "DRUID", duration = 50 },                                        -- Mighty Bash
  [132158] = { class = "DRUID", duration = 60 },                                        -- Nature's Swiftness
  [124974] = { class = "DRUID", duration = 90 },                                        -- Nature's Vigil
  [108238] = { class = "DRUID", duration = 120 },                                       -- Renewal
  [132469] = { class = "DRUID", duration = 30 },                                        -- Typhoon
  [102793] = { class = "DRUID", duration = 60 },                                        -- Ursol's Vortex
  [112071] = { class = "DRUID", duration = 180, specID = { 102 } },                     -- Celestial Alignment
  [61336]  = { class = "DRUID", duration = 180, specID = { 103, 104 } },                -- Survival Instincts
  [2782]   = { class = "DRUID", duration = 8, specID = { 102, 103, 104 } },             -- Remove Corruption
  [62606]  = { class = "DRUID", duration = 9, specID = { 104 }, charges = 3 },          -- Savage Defense
  [48505]  = { class = "DRUID", duration = 90, specID = { 102 } },                      -- Starfall
  [78674]  = { class = "DRUID", duration = 15, specID = { 102 } },                      -- Starsurge
  [88751]  = { class = "DRUID", duration = 10, specID = { 102 } },                      -- Wild Mushroom: Detonate
  [110570] = { class = "DRUID", duration = 45, specID = { 102 } },                      -- Symbiosis/Anti-Magic Shell
  [110621] = { class = "DRUID", duration = 180, specID = { 102 } },                     -- Symbiosis/Mirror Image
  [126458] = { class = "DRUID", duration = 60, specID = { 102 } },                      -- Symbiosis/Grapple Weapon
  [110698] = { class = "DRUID", duration = 60, specID = { 102 } },                      -- Symbiosis/Hammer of Justice
  [110707] = { class = "DRUID", duration = 60, specID = { 102 } },                      -- Symbiosis/Mass Dispel
  [110788] = { class = "DRUID", duration = 120, specID = { 102 } },                     -- Symbiosis/Cloak of Shadows
  [122291] = { class = "DRUID", duration = 180, specID = { 102 } },                     -- Symbiosis/Unending Resolve
  [122292] = { class = "DRUID", duration = 30, specID = { 102 } },                      -- Symbiosis/Intervene
  [110597] = { class = "DRUID", duration = 30, specID = { 103 } },                      -- Symbiosis/Play Dead
  [5217]   = { class = "DRUID", duration = 30, specID = { 103 } },                      -- Tiger's Fury
  [110693] = { class = "DRUID", duration = 25, specID = { 103 } },                      -- Symbiosis/Frost Nova
  [126449] = { class = "DRUID", duration = 35, specID = { 103 } },                      -- Symbiosis/Clash
  [110700] = { class = "DRUID", duration = 300, specID = { 103 } },                     -- Symbiosis/Divine Shield
  [110715] = { class = "DRUID", duration = 180, specID = { 103 } },                     -- Symbiosis/Dispersion
  [110730] = { class = "DRUID", duration = 60, specID = { 103 } },                      -- Symbiosis/Redirect
  [110807] = { class = "DRUID", duration = 120, specID = { 103 } },                     -- Symbiosis/Feral Spirit
  [110810] = { class = "DRUID", duration = 30, specID = { 103 } },                      -- Symbiosis/Soul Swap
  [112997] = { class = "DRUID", duration = 300, specID = { 103 } },                     -- Symbiosis/Shattering Blow
  [102795] = { class = "DRUID", duration = 60, specID = { 104 } },                      -- Bear Hug
  [5229]   = { class = "DRUID", duration = 60, specID = { 104 } },                      -- Enrage
  [122285] = { class = "DRUID", duration = 60, specID = { 104 } },                      -- Symbiosis/Bone Shield
  [110701] = { class = "DRUID", duration = 30, specID = { 104 } },                      -- Symbiosis/Consecration
  [110717] = { class = "DRUID", duration = 180, specID = { 104 } },                     -- Symbiosis/Fear Ward
  [122290] = { class = "DRUID", duration = 15, specID = { 104 } },                      -- Symbiosis/Life Tap
  [113002] = { class = "DRUID", duration = 120, specID = { 104 } },                     -- Symbiosis/Spell Reflection
  [102342] = { class = "DRUID", duration = 30, specID = { 105 } },                      -- Ironbark (it's actually 60sec CD but 2set PvP bonus makes it 30sec)
  [88423]  = { class = "DRUID", duration = 8, specID = { 105 } },                       -- Nature's Cure
  [18562]  = { class = "DRUID", duration = 13, specID = { 105 } },                      -- Swiftmend
  [48438]  = { class = "DRUID", duration = 8, specID = { 105 } },                       -- Wild Growth
  [110575] = { class = "DRUID", duration = 180, specID = { 105 } },                     -- Symbiosis/Icebound Fortitude
  [110617] = { class = "DRUID", duration = 120, specID = { 105 } },                     -- Symbiosis/Deterrence
  [110696] = { class = "DRUID", duration = 300, specID = { 105 } },                     -- Symbiosis/Ice Block
  [126456] = { class = "DRUID", duration = 180, specID = { 105 } },                     -- Symbiosis/Fortifying Brew
  [122288] = { class = "DRUID", duration = 8, specID = { 105 } },                       -- Symbiosis/Cleanse
  [110718] = { class = "DRUID", duration = 90, specID = { 105 } },                      -- Symbiosis/Leap of Faith
  [110791] = { class = "DRUID", duration = 180, specID = { 105 } },                     -- Symbiosis/Evasion
  [110806] = { class = "DRUID", duration = 120, specID = { 105 } },                     -- Symbiosis/Spiritwalker's Grace
  [112970] = { class = "DRUID", duration = 30, specID = { 105 } },                      -- Symbiosis/Demonic Circle: Teleport
  [113004] = { class = "DRUID", duration = 90, specID = { 105 } },                      -- Symbiosis/Intimidating Roar
  [106952] = { class = "DRUID", duration = 180, specID = { 103, 104 } },                -- Berserk (Cat Form)
  [50334]  = { parent = 106952 },                                                       -- Berserk (Bear Form)

  -- ###################################################
  -- ###################### Mage  ######################
  -- ###################################################

  [2139]   = { class = "MAGE", duration = 24, default = true },   -- Counterspell
  [108978] = { class = "MAGE", duration = 90 },                   -- Alter Time (it's actually 180sec but Mage 4 set PvP brings it to 90sec)
  [1953]   = { class = "MAGE", duration = 15 },                   -- Blink
  [120]    = { class = "MAGE", duration = 10 },                   -- Cone of Cold
  [44572]  = { class = "MAGE", duration = 30 },                   -- Deep Freeze
  [12051]  = { class = "MAGE", duration = 120 },                  -- Evocation
  [2136]   = { class = "MAGE", duration = 8 },                    -- Fire Blast
  [2120]   = { class = "MAGE", duration = 12 },                   -- Flamestrike
  [122]    = { class = "MAGE", duration = 25 },                   -- Frost Nova
  [45438]  = { class = "MAGE", duration = 300 },                  -- Ice Block
  [66]     = { class = "MAGE", duration = 300 },                  -- Invisibility
  [55342]  = { class = "MAGE", duration = 180 },                  -- Mirror Image
  [475]    = { class = "MAGE", duration = 8 },                    -- Remove Curse
  [80353]  = { class = "MAGE", duration = 300 },                  -- Time Warp
  [108843] = { class = "MAGE", duration = 25 },                   -- Blazing Speed
  [86949]  = { class = "MAGE", duration = 120 },                  -- Cauterize
  [11958]  = { class = "MAGE", duration = 180 },                  -- Cold Snap
  [112948] = { class = "MAGE", duration = 10 },                   -- Frost Bomb
  [102051] = { class = "MAGE", duration = 20 },                   -- Frostjaw
  [110959] = { class = "MAGE", duration = 90 },                   -- Greater Invisibility
  [11426]  = { class = "MAGE", duration = 25 },                   -- Ice Barrier
  [108839] = { class = "MAGE", duration = 20 },                   -- Ice Floes
  [111264] = { class = "MAGE", duration = 20 },                   -- Ice Ward
  [1463]   = { class = "MAGE", duration = 25 },                   -- Incanter's Ward
  [114003] = { class = "MAGE", duration = 10 },                   -- Invocation
  [12043]  = { class = "MAGE", duration = 90 },                   -- Presence of Mind
  [113724] = { class = "MAGE", duration = 45 },                   -- Ring of Frost
  [115610] = { class = "MAGE", duration = 25 },                   -- Temporal Shield
  [113074] = { class = "MAGE", duration = 10 },                   -- Symbiosis/Healing Touch
  [12042]  = { class = "MAGE", duration = 90, specID = { 62 } },  -- Arcane Power
  [11129]  = { class = "MAGE", duration = 45, specID = { 63 } },  -- Combustion
  [31661]  = { class = "MAGE", duration = 20, specID = { 63 } },  -- Dragon's Breath
  [84714]  = { class = "MAGE", duration = 60, specID = { 64 } },  -- Frozen Orb
  [12472]  = { class = "MAGE", duration = 180, specID = { 64 } }, -- Icy Veins
  [31687]  = { class = "MAGE", duration = 60, specID = { 64 } },  -- Summon Water Elemental

  -- ###################################################
  -- ###################### Rogue ######################
  -- ###################################################

  [1766]   = { class = "ROGUE", duration = 15, default = true },              -- Kick
  [2094]   = { class = "ROGUE", duration = 120 },                             -- Blind
  [31224]  = { class = "ROGUE", duration = 60 },                              -- Cloak of Shadows
  [51722]  = { class = "ROGUE", duration = 60 },                              -- Dismantle
  [5277]   = { class = "ROGUE", duration = 120 },                             -- Evasion
  [1776]   = { class = "ROGUE", duration = 10 },                              -- Gouge
  [408]    = { class = "ROGUE", duration = 20 },                              -- Kidney Shot
  [73981]  = { class = "ROGUE", duration = 60 },                              -- Redirect
  [121471] = { class = "ROGUE", duration = 180 },                             -- Shadow Blades
  [76577]  = { class = "ROGUE", duration = 180 },                             -- Smoke Bomb
  [2983]   = { class = "ROGUE", duration = 60 },                              -- Sprint
  [57934]  = { class = "ROGUE", duration = 30 },                              -- Tricks of the Trade
  [1856]   = { class = "ROGUE", duration = 120 },                             -- Vanish
  [79140]  = { class = "ROGUE", duration = 120, specID = { 259 } },           -- Vendetta
  [113613] = { class = "ROGUE", duration = 180, specID = { 259, 260, 261 } }, -- Symbiosis/Growl
  [13750]  = { class = "ROGUE", duration = 180, specID = { 260 } },           -- Adrenaline Rush
  [51690]  = { class = "ROGUE", duration = 120, specID = { 260 } },           -- Killing Spree
  [14183]  = { class = "ROGUE", duration = 20, specID = { 261 } },            -- Premeditation
  [51713]  = { class = "ROGUE", duration = 60, specID = { 261 } },            -- Shadow Dance
  [31230]  = { class = "ROGUE", duration = 90 },                              -- Cheat Death
  [74001]  = { class = "ROGUE", duration = 120 },                             -- Combat Readiness
  [14185]  = { class = "ROGUE", duration = 300 },                             -- Preparation
  [36554]  = { class = "ROGUE", duration = 20 },                              -- Shadowstep
  [137619] = { class = "ROGUE", duration = 60 },                              -- Marked for Death

  -- ###################################################
  -- ##################### Warrior #####################
  -- ###################################################

  [6552]   = { class = "WARRIOR", duration = 15, default = true },                -- Pummel
  [102060] = { class = "WARRIOR", parent = 6552, duration = 40, default = true }, -- Disrupting Shout
  [18499]  = { class = "WARRIOR", duration = 30 },                                -- Berserker Rage
  [100]    = { class = "WARRIOR", duration = 20 },                                -- Charge
  [676]    = { class = "WARRIOR", duration = 60 },                                -- Deadly Calm
  [6544]   = { class = "WARRIOR", duration = 45 },                                -- Heroic Leap
  [57755]  = { class = "WARRIOR", duration = 30 },                                -- Heroic Throw
  [3411]   = { class = "WARRIOR", duration = 30 },                                -- Intervene
  [5246]   = { class = "WARRIOR", duration = 90 },                                -- Intimidating Shout
  [97462]  = { class = "WARRIOR", duration = 180 },                               -- Rallying Cry
  [1719]   = { class = "WARRIOR", duration = 180 },                               -- Recklessness
  [64382]  = { class = "WARRIOR", duration = 300 },                               -- Shattering Throw
  [871]    = { class = "WARRIOR", duration = { default = 180, [73] = 120 } },     -- Shield Wall
  [114207] = { class = "WARRIOR", duration = 180 },                               -- Skull Banner
  [23920]  = { class = "WARRIOR", duration = 25 },                                -- Spell Reflection
  [55694]  = { class = "WARRIOR", duration = 60 },                                -- Enraged Regeneration
  [103840] = { class = "WARRIOR", duration = 30 },                                -- Impending Victory
  [107566] = { class = "WARRIOR", duration = 40 },                                -- Staggering Shout
  [46968]  = { class = "WARRIOR", duration = 40 },                                -- Shockwave
  [46924]  = { class = "WARRIOR", duration = 60 },                                -- Bladestorm
  [118000] = { class = "WARRIOR", duration = 60 },                                -- Dragon Roar
  [114030] = { class = "WARRIOR", duration = 120 },                               -- Vigilance
  [114029] = { class = "WARRIOR", duration = 30 },                                -- Safeguard
  [114028] = { class = "WARRIOR", duration = 60 },                                -- Mass Spell Reflection
  [107574] = { class = "WARRIOR", duration = 180 },                               -- Avatar
  [107570] = { class = "WARRIOR", duration = 30 },                                -- Storm Bolt
  [12292]  = { class = "WARRIOR", duration = 60 },                                -- Bloodbath
  [86346]  = { class = "WARRIOR", duration = 20, specID = { 71, 72 } },           -- Colossus Smash
  [12294]  = { class = "WARRIOR", duration = 6, specID = { 71 } },                -- Mortal Strike
  [118038] = { class = "WARRIOR", duration = 120, specID = { 71, 72 } },          -- Die by the Sword
  [122294] = { class = "WARRIOR", duration = 300, specID = { 71, 72 } },          -- Symbiosis/Stampeding Shout
  [1160]   = { class = "WARRIOR", duration = 60, specID = { 73 } },               -- Demoralizing Shout
  [12975]  = { class = "WARRIOR", duration = 180, specID = { 73 } },              -- Last Stand
  [122286] = { class = "WARRIOR", duration = 60, specID = { 73 } },               -- Symbiosis/Savage Defense

  -- ###################################################
  -- ################### Death Knight ##################
  -- ###################################################

  [47528]  = { class = "DEATHKNIGHT", duration = 15, default = true },         -- Mind Freeze
  [49576]  = { class = "DEATHKNIGHT", duration = 25 },                         -- Death Grip
  [46584]  = { class = "DEATHKNIGHT", duration = 120 },                        -- Raise Dead
  [47476]  = { class = "DEATHKNIGHT", duration = 60 },                         -- Strangulate
  [43265]  = { class = "DEATHKNIGHT", duration = 30 },                         -- Death and Decay
  [48792]  = { class = "DEATHKNIGHT", duration = 180 },                        -- Icebound Fortitude
  [57330]  = { class = "DEATHKNIGHT", duration = 20 },                         -- Horn of Winter
  [48707]  = { class = "DEATHKNIGHT", duration = 45 },                         -- Anti-Magic Shell
  [61999]  = { class = "DEATHKNIGHT", duration = 600 },                        -- Raise Ally
  [47568]  = { class = "DEATHKNIGHT", duration = 300 },                        -- Empower Rune Weapon
  [42650]  = { class = "DEATHKNIGHT", duration = 600 },                        -- Army of the Dead
  [77575]  = { class = "DEATHKNIGHT", duration = 60 },                         -- Outbreak
  [77606]  = { class = "DEATHKNIGHT", duration = 60 },                         -- Dark Simulacrum
  [123693] = { class = "DEATHKNIGHT", duration = 25 },                         -- Plague Leech
  [115989] = { class = "DEATHKNIGHT", duration = 90 },                         -- Unholy Blight
  [51052]  = { class = "DEATHKNIGHT", duration = 120 },                        -- Anti-Magic Zone
  [49039]  = { class = "DEATHKNIGHT", duration = 120 },                        -- Lichborne
  [108194] = { class = "DEATHKNIGHT", duration = 30 },                         -- Asphyxiate
  [96268]  = { class = "DEATHKNIGHT", duration = 30 },                         -- Death's Advance
  [48743]  = { class = "DEATHKNIGHT", duration = 120 },                        -- Death Pact
  [108201] = { class = "DEATHKNIGHT", duration = 120 },                        -- Desecrated Ground
  [108199] = { class = "DEATHKNIGHT", duration = 60 },                         -- Gorefiend's Grasp
  [108200] = { class = "DEATHKNIGHT", duration = 60 },                         -- Remorseless Winter
  [55233]  = { class = "DEATHKNIGHT", duration = 60, specID = { 250 } },       -- Vampiric Blood
  [49222]  = { class = "DEATHKNIGHT", duration = 60, specID = { 250 } },       -- Bone Shield
  [49028]  = { class = "DEATHKNIGHT", duration = 90, specID = { 250 } },       -- Dancing Rune Weapon
  [48982]  = { class = "DEATHKNIGHT", duration = 30, specID = { 250 } },       -- Rune Tap
  [114866] = { class = "DEATHKNIGHT", duration = 6, specID = { 250 } },        -- Soul Reaper
  [130735] = { parent = 114866 },                                              -- Soul Reaper
  [130736] = { parent = 114866 },                                              -- Soul Reaper
  [113072] = { class = "DEATHKNIGHT", duration = 180, specID = { 250 } },      -- Symbiosis/Might of Ursoc
  [51271]  = { class = "DEATHKNIGHT", duration = 60, specID = { 251 } },       -- Pillar of Frost
  [113516] = { class = "DEATHKNIGHT", duration = 180, specID = { 251, 252 } }, -- Symbiosis/Wild Mushroom: Plague
  [49016]  = { class = "DEATHKNIGHT", duration = 180, specID = { 252 } },      -- Unholy Frenzy
  [49206]  = { class = "DEATHKNIGHT", duration = 180, specID = { 252 } },      -- Summon Gargoyle
  [47481]  = { class = "DEATHKNIGHT", duration = 60 },                         -- Gnaw
  [91800]  = { parent = 47481 },                                               -- Gnaw
  [47484]  = { class = "DEATHKNIGHT", duration = 45 },                         -- Huddle
  [91837]  = { parent = 47484 },                                               -- Putrid Bulwark
  [47482]  = { class = "DEATHKNIGHT", duration = 30 },                         -- Leap (Unholy)
  [91809]  = { parent = 47482 },                                               -- Leap
  [91802]  = { parent = 47482 },                                               -- Shambling Rush
  [91797]  = { class = "DEATHKNIGHT", duration = 60 },                         -- Monstruous Blow

  -- ###################################################
  -- ###################### Monk  ######################
  -- ###################################################

  [116705] = { class = "MONK", duration = 15, default = true },            -- Spear Hand Strike
  [109132] = { class = "MONK", duration = 20, charges = 2 },               -- Roll
  [121827] = { parent = 109132, duration = 15, charges = 3 },              -- Roll (Celerity)
  [115450] = { class = "MONK", duration = 8, charges = 3 },                -- Detox
  [115072] = { class = "MONK", duration = 15 },                            -- Expel Harm
  [115203] = { class = "MONK", duration = 180 },                           -- Fortifying Brew
  [117368] = { class = "MONK", duration = 60 },                            -- Grapple Weapon
  [115078] = { class = "MONK", duration = 15 },                            -- Paralysis
  [115080] = { class = "MONK", duration = { default = 90, [269] = 210 } }, -- Touch of Death
  [101643] = { class = "MONK", duration = 45 },                            -- Transcendence
  [119996] = { class = "MONK", duration = 25 },                            -- Transcendence: Transfer
  [115176] = { class = "MONK", duration = 180 },                           -- Zen Meditation
  [137562] = { class = "MONK", duration = 120 },                           -- Nimble Brew
  [119392] = { class = "MONK", duration = 30 },                            -- Charging Ox Wave
  [115399] = { class = "MONK", duration = 45, charges = 2 },               -- Chi Brew
  [115098] = { class = "MONK", duration = 15 },                            -- Chi Wave
  [122278] = { class = "MONK", duration = 90 },                            -- Dampen Harm
  [122783] = { class = "MONK", duration = 90 },                            -- Diffuse Magic
  [123904] = { class = "MONK", duration = 180 },                           -- Invoke Xuen, the White
  [119381] = { class = "MONK", duration = 45 },                            -- Leg Sweep
  [116844] = { class = "MONK", duration = 45 },                            -- Ring of Peace
  [116847] = { class = "MONK", duration = 6 },                             -- Rushing Jade Wind
  [116841] = { class = "MONK", duration = 30 },                            -- Tiger's Lust
  [115213] = { class = "MONK", duration = 180, specID = { 268 } },         -- Avert Harm
  [122057] = { class = "MONK", duration = 35, specID = { 268 } },          -- Clash
  [115308] = { class = "MONK", duration = 6, specID = { 268 } },           -- Elusive Brew
  [115295] = { class = "MONK", duration = 30, specID = { 268 } },          -- Guard
  [121253] = { class = "MONK", duration = 8, specID = { 268 } },           -- Keg Smash
  [115315] = { class = "MONK", duration = 30, specID = { 268 } },          -- Summon Black Ox
  [113306] = { class = "MONK", duration = 180, specID = { 268 } },         -- Symbiosis/Survival Instincts
  [115288] = { class = "MONK", duration = 60, specID = { 269 } },          -- Energizing Brew
  [113656] = { class = "MONK", duration = 25, specID = { 269 } },          -- Fists of Fury
  [101545] = { class = "MONK", duration = 25, specID = { 269 } },          -- Flying Serpent Kick
  [107428] = { class = "MONK", duration = 8, specID = { 269 } },           -- Rising Sun Kick
  [122470] = { class = "MONK", duration = 90, specID = { 269 } },          -- Touch of Karma
  [127361] = { class = "MONK", duration = 60, specID = { 269 } },          -- Symbiosis/Bear Hug
  [116849] = { class = "MONK", duration = 120, specID = { 270 } },         -- Life Cocoon
  [115151] = { class = "MONK", duration = 8, specID = { 270 } },           -- Renewing Misg
  [115310] = { class = "MONK", duration = 180, specID = { 270 } },         -- Revival
  [115313] = { class = "MONK", duration = 30, specID = { 270 } },          -- Summon Jade Serpent
  [116680] = { class = "MONK", duration = 45, specID = { 270 } },          -- Thunder Focus Tea
}
