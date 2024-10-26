local addonName, addon = ...

addon.MAX_ARENA_SIZE = 3

addon.Shared = {}

addon.Resets = {
    --[[ Grimoire: Felhunter
         - Spell Lock
      ]]
    [111897] = {119910},
    [133] = {{spellID = 190319, amount = 3}}
}

addon.Cooldowns = {

    -- Death Knight

    [47528] = {default = true, duration = 15, class = "DEATHKNIGHT"}, -- Mind Freeze
    [48265] = {duration = 45, class = "DEATHKNIGHT", charges = 2}, -- Death's Advance
		[444347] = {parent = 48265}, -- Death Charge
    [48707] = {duration = 40, class = "DEATHKNIGHT"}, -- Anti-Magic Shell
		[410358] = {parent = 48707, duration = 30}, -- Anti-Magic Shell (Spellwarden)
    [49576] = {duration = {default = 25, [250] = 15}, class = "DEATHKNIGHT", charges = 2}, -- Death Grip
    [51052] = {duration = 120, class = "DEATHKNIGHT"}, -- Anti-Magic Zone
    [61999] = {duration = 600, class = "DEATHKNIGHT"}, -- Raise Ally
    [77606] = {duration = 20, class = "DEATHKNIGHT"}, -- Dark Simulacrum
    [212552] = {duration = 60, class = "DEATHKNIGHT"}, -- Wraith Walk
    [47476] = {duration = 45, class = "DEATHKNIGHT"}, -- Strangulate
    [207167] = {duration = 60, class = "DEATHKNIGHT"}, -- Blinding Sleet
    [327574] = {duration = 120, class = "DEATHKNIGHT"}, -- Sacrificial Pact
    [221562] = {duration = 45, class = "DEATHKNIGHT"}, -- Asphyxiate
    [48792] = {duration = 120, class = "DEATHKNIGHT"}, -- Icebound Fortitude
    [383269] = {duration = 120, class = "DEATHKNIGHT"}, -- Abomination's Limb
    [48743] = {duration = 120, class = "DEATHKNIGHT"}, -- Death Pact
    [439843] = {duration = 30, class = "DEATHKNIGHT", specID = {250, 251}}, -- Reaper's Mark
    [43265] = {duration = 20, class = "DEATHKNIGHT", charges = 2}, -- Death and Decay
		[152280] = {parent = 43265, duration = 15, specID = {252}}, -- Defile
    [49039] = {duration = 120, class = "DEATHKNIGHT"}, -- Lichborne

		-- Blood

		[49028] = {duration = 120, class = "DEATHKNIGHT", specID = {250}}, -- Dancing Rune Weapon
		[55233] = {duration = 90, class = "DEATHKNIGHT", specID = {250}}, -- Vampiric Blood
		[108199] = {duration = 90, class = "DEATHKNIGHT", specID = {250}}, -- Gorefiend's Grasp
		[194679] = {duration = 25, class = "DEATHKNIGHT", specID = {250}, charges = 2}, -- Rune Tap
		[194844] = {duration = 60, class = "DEATHKNIGHT", specID = {250}}, -- Bonestorm
		[203173] = {duration = 30, class = "DEATHKNIGHT", specID = {250}}, -- Death Chain
		[274156] = {duration = 30, class = "DEATHKNIGHT", specID = {250}}, -- Consumption
		[206931] = {duration = 30, class = "DEATHKNIGHT", specID = {250}}, -- Blooddrinker
		[219809] = {duration = 60, class = "DEATHKNIGHT", specID = {250}}, -- Tombstone
		[221699] = {duration = 60, class = "DEATHKNIGHT", specID = {250}, charges = 2}, -- Blood Tap

		-- Frost

		[51271] = {duration = 60, class = "DEATHKNIGHT", specID = {251}}, -- Pillar of Frost
		[152279] = {duration = 120, class = "DEATHKNIGHT", specID = {251}}, -- Breath of Sindragosa
		[196770] = {duration = 30, class = "DEATHKNIGHT", specID = {251}}, -- Remorseless Winter
		[305392] = {duration = 45, class = "DEATHKNIGHT", specID = {251}}, -- Chill Streak
	        [47568] = {duration = 120, class = "DEATHKNIGHT", specID = {251}}, -- Empower Rune Weapon
		[279302] = {duration = 90, class = "DEATHKNIGHT", specID = {251}}, -- Frostwyrm's Fury

		-- Unholy

		[42650] = {duration = 180, class = "DEATHKNIGHT", specID = {252}}, -- Army of the Dead
		[63560] = {duration = 45, class = "DEATHKNIGHT", specID = {252}}, -- Dark Transformation
		[47481] = {duration = 90, class = "DEATHKNIGHT", specID = {252}}, -- Gnaw (Ghoul)
		[47482] = {duration = 30, class = "DEATHKNIGHT", specID = {252}}, -- Leap (Ghoul)
		[49206] = {duration = 180, class = "DEATHKNIGHT", specID = {252}}, -- Summon Gargoyle
			[207349] = {parent = 49206}, -- Dark Arbiter
		[91802] = {duration = 30, class = "DEATHKNIGHT", specID = {252}}, -- Shambling Rush (Ghoul)
		[207289] = {duration = 90, class = "DEATHKNIGHT", specID = {252}}, -- Unholy Assault
		[275699] = {duration = 30, class = "DEATHKNIGHT", specID = {252}}, -- Apocalypse
		[390279] = {duration = 45, class = "DEATHKNIGHT", specID = {252}}, -- Vile Contagion
	        [210128] = {duration = 12, class = "DEATHKNIGHT", specID = {252}, charges = 2}, -- Reanimation
		[455395] = {duration = 90, class = "DEATHKNIGHT", specID = {252}}, -- Raise Abomination

    -- Demon Hunter

    [179057] = {duration = 45, class = "DEMONHUNTER"}, -- Chaos Nova
    [183752] = {default = true, duration = 15, class = "DEMONHUNTER"}, -- Disrupt
    [188501] = {duration = 30, class = "DEMONHUNTER"}, -- Spectral Sight
    [191427] = {duration = 120, class = "DEMONHUNTER"}, -- Metamorphosis
		[187827] = {parent = 191427, duration = 120}, -- Metamorphosis (Vengeance)
    [196718] = {duration = 180, class = "DEMONHUNTER"}, -- Darkness
    [198793] = {duration = {default = 25, [577] = 20}, class = "DEMONHUNTER"}, -- Vengeful Retreat
    [205604] = {duration = 60, class = "DEMONHUNTER"}, -- Reverse Magic
    [206803] = {duration = 90, class = "DEMONHUNTER"}, -- Rain from Above
    [212800] = {duration = 60, class = "DEMONHUNTER"}, -- Blur
    [196555] = {duration = 180, class = "DEMONHUNTER"}, -- Netherwalk
    [217832] = {duration = 45, class = "DEMONHUNTER"}, -- Imprison
		[221527] = {parent = 217832}, -- Imprison (Detainment)
    [370965] = {duration = 90, class = "DEMONHUNTER"}, -- The Hunt
    [204596] = {duration = 30, class = "DEMONHUNTER"}, -- Sigil of Flame
    [207684] = {duration = 90, class = "DEMONHUNTER"}, -- Sigil of Misery
    [278326] = {duration = 10, class = "DEMONHUNTER"}, -- Consume Magic

		-- Havoc

		[258925] = {duration = 90, class = "DEMONHUNTER", specID = {577}}, -- Fel Barrage
		[211881] = {duration = 30, class = "DEMONHUNTER", specID = {577}}, -- Fel Eruption
		[390163] = {duration = 60, class = "DEMONHUNTER", specID = {577, 581}}, -- Elysian Decree
		[198013] = {duration = 40, class = "DEMONHUNTER", specID = {577}}, -- Eye Beam
		[258860] = {duration = 40, class = "DEMONHUNTER", specID = {577}}, -- Essence Break
	        [342817] = {duration = 21, class = "DEMONHUNTER", specID = {577}}, -- Glaive Tempest

		-- Vengeance

		[202137] = {duration = 60, class = "DEMONHUNTER", specID = {581}}, -- Sigil of Silence
		[202138] = {duration = 120, class = "DEMONHUNTER", specID = {581}}, -- Sigil of Chains
		[204021] = {duration = 48, class = "DEMONHUNTER", specID = {581}, charges = 2}, -- Fiery Brand
		[205629] = {duration = 9, class = "DEMONHUNTER", specID = {581}, charges = 2}, -- Demonic Trample
		[205630] = {duration = 60, class = "DEMONHUNTER", specID = {581}}, -- Illidan's Grasp
		[263648] = {duration = 30, class = "DEMONHUNTER", specID = {581}}, -- Soul Barrier
		[207407] = {duration = 60, class = "DEMONHUNTER", specID = {581}}, -- Soul Carver

    -- Priest

    [586] = {duration = 20, class = "PRIEST"}, -- Fade
    [32375] = {duration = 60, class = "PRIEST"}, -- Mass Dispel
    [375901] = {duration = 45, class = "PRIEST"}, -- Mindgames
    [316262] = {duration = 90, class = "PRIEST"}, -- Thoughtsteal
    [32379] = {duration = 10, class = "PRIEST"}, -- Shadow Word: Death
    [10060] = {duration = 120, class = "PRIEST"}, -- Power Infusion
    [8122] = {duration = 30, class = "PRIEST"}, -- Psychic Scream
    [73325] = {duration = 60, class = "PRIEST"}, -- Leap of Faith
    [19236] = {duration = 70, class = "PRIEST"}, -- Desperate Prayer
    [108920] = {duration = 60, class = "PRIEST"}, -- Void Tendrils
    [108968] = {duration = 300, class = "PRIEST"}, -- Void Shift
    [373481] = {duration = 12, class = "PRIEST"}, -- Power Word: Life
    [15286] = {duration = 90, class = "PRIEST"}, -- Vampiric Embrace
    [120517] = {duration = 60, class = "PRIEST", specID = {256, 257}}, -- Halo
		[120644] = {parent = 120517, specID = {258}}, -- Halo
    [428924] = {duration = 45, class = "PRIEST", specID = {256, 257}, charges = 2}, -- Premonition
    [34433] = {duration = 180, class = "PRIEST"}, -- Shadowfiend

		-- Discipline

		[33206] = {duration = 180, class = "PRIEST", specID = {256}, charges = 2}, -- Pain Suppression
		[123040] = {duration = 60, class = "PRIEST", specID = {256}}, -- Mindbender (Discipline)
		[451235] = { duration = 60, class = "PRIEST", specID = { 256, 258 } }, -- Voidwrath
		[47536] = {duration = 90, class = "PRIEST", specID = {256}}, -- Rapture
		[62618] = {duration = 180, class = "PRIEST", specID = {256}}, -- Power Word: Barrier
	                [271466] = {parent = 34433}, -- Luminous Barrier
		[197862] = {duration = 60, class = "PRIEST", specID = {256}}, -- Archangel
		[197871] = {duration = 60, class = "PRIEST", specID = {256}}, -- Dark Archangel
		[421453] = {duration = 240, class = "PRIEST", specID = {256}}, -- Ultimate Penitence
		[194509] = {duration = 15, class = "PRIEST", specID = {256}, charges = 2}, -- Power Word: Radiance
		[527] = {duration = 8, class = "PRIEST", specID = {256, 257}, charges = 2}, -- Purify

		-- Holy

		[47788] = {duration = 180, class = "PRIEST", specID = {257}}, -- Guardian Spirit
		[64843] = {duration = 120, class = "PRIEST", specID = {257}}, -- Divine Hymn
		[64901] = {duration = 180, class = "PRIEST", specID = {257}}, -- Symbol of Hope
		[197268] = {duration = 90, class = "PRIEST", specID = {257}}, -- Ray of Hope
		[200183] = {duration = 120, class = "PRIEST", specID = {257}}, -- Apotheosis
		[213610] = {duration = 45, class = "PRIEST", specID = {257}}, -- Holy Ward
		[215769] = {duration = 120, class = "PRIEST", specID = {257}}, -- Spirit of Redemption
		[88625] = {duration = 60, class = "PRIEST", specID = {257}}, -- Holy Word: Chastise
		[328530] = {duration = 60, class = "PRIEST", specID = {257}}, -- Divine Ascension
		[372835] = {duration = 120, class = "PRIEST", specID = {257}}, -- Lightwell

		-- Shadow

		[15487] = {duration = 45, class = "PRIEST", specID = {258}}, -- Silence
		[200174] = {duration = 60, class = "PRIEST", specID = {258}}, -- Mindbender (Shadow)
		[47585] = {duration = 90, class = "PRIEST", specID = {258}}, -- Dispersion
		[64044] = {duration = 45, class = "PRIEST", specID = {258}}, -- Psychic Horror
		[263165] = {duration = 30, class = "PRIEST", specID = {258}}, -- Void Torrent
		[205369] = {duration = 30, class = "PRIEST", specID = {258}}, -- Mind Bomb
		[211522] = {duration = 45, class = "PRIEST", specID = {258}}, -- Psyfiend
		[205385] = {duration = 20, class = "PRIEST", specID = {258}}, -- Shadow Crash
		[228260] = {duration = 120, class = "PRIEST", specID = {258}}, -- Void Form
		[391109] = {duration = 60, class = "PRIEST", specID = {258}}, -- Dark Ascension
		[213634] = {duration = 8, class = "PRIEST", specID = {258}}, -- Purify Disease

    -- Paladin

    [633] = {duration = 420, class = "PALADIN"}, -- Lay on Hands
		[471195] = {parent = 633}, -- Lay on Hands (30% Armor increase)
    [642] = {duration = 210, class = "PALADIN"}, -- Divine Shield
    [853] = {duration = 30, class = "PALADIN"}, -- Hammer of Justice
    [1022] = {duration = 240, class = "PALADIN", charges = 2}, -- Blessing of Protection
    [1044] = {duration = 25, class = "PALADIN", charges = 2}, -- Blessing of Freedom
    [6940] = {duration = 60, class = "PALADIN"}, -- Blessing of Sacrifice
		[199448] = {parent = 6940, duration = 60}, -- Ultimate Sacrifice
    [20066] = {duration = 15, class = "PALADIN"}, -- Repentance
    [31884] = {duration = 120, class = "PALADIN"}, -- Avenging Wrath
    [115750] = {duration = 75, class = "PALADIN"}, -- Blinding Light
    [375576] = {duration = 60, class = "PALADIN"}, -- Divine Toll
    [96231] = {default = true, duration = 15, class = "PALADIN"}, -- Rebuke
    [190784] = {duration = 45, class = "PALADIN", charges = 2}, -- Divine Steed
    [410126] = {duration = 45, class = "PALADIN"}, -- Searing Glare

		-- Holy

		[498] = {duration = 42, class = "PALADIN", specID = {65}}, -- Divine Protection
		[31821] = {duration = 90, class = "PALADIN", specID = {65}}, -- Aura Mastery
		[200652] = {duration = 90, class = "PALADIN", specID = {65}}, -- Tyr's Deliverance
		[4987] = {duration = 8, class = "PALADIN", specID = {65}}, -- Cleanse
		[148039] = {duration = 30, class = "PALADIN", specID = {65}}, -- Barrier of Faith
	        [414273] = {duration = 90, class = "PALADIN", specID = {65}}, -- Hand of Divinity
	        [216331] = {duration = 60, class = "PALADIN", specID = {65}}, -- Avenging Crusader
	        [114165] = {duration = 30, class = "PALADIN", specID = {65}}, -- Holy Prism

		-- Protection

		[31850] = {duration = 84, class = "PALADIN", specID = {66}}, -- Ardent Defender
		[31935] = {default = true, duration = 13, class = "PALADIN", specID = {66}}, -- Avenger's Shield
		[86659] = {duration = 300, class = "PALADIN", specID = {66}}, -- Guardian of Ancient Kings
			[228049] = {parent = 86659}, -- Guardian of the Forgotten Queen
		[387174] = {duration = 45, class = "PALADIN", specID = {66}}, -- Eye of Tyr
		[215652] = {duration = 45, class = "PALADIN", specID = {66}}, -- Shield of Virtue
		[213644] = {duration = 8, class = "PALADIN", specID = {66, 70}}, -- Cleanse Toxins
		[378974] = {duration = 120, class = "PALADIN", specID = {66}}, -- Bastion of Light
		[327193] = {duration = 90, class = "PALADIN", specID = {66}}, -- Moment of Glory
	        [389539] = {duration = 120, class = "PALADIN", specID = {66}}, -- Sentinel
		[204018] = {duration = {default = 300, [66] = 210}, class = "PALADIN", specID = {66, 70}}, -- Blessing of Spellwarding

		-- Retribution

		[184662] = {duration = 63, class = "PALADIN", specID = {70}}, -- Shield of Vengeance
	        [403876] = {duration = 63, class = "PALADIN", specID = {70}}, -- Divine Protection (Retribution)
		[255937] = {duration = 30, class = "PALADIN", specID = {70}}, -- Wake of Ashes
	        [231895] = {duration = 120, class = "PALADIN", specID = {70}}, -- Crusade
	        [198034] = {duration = 120, class = "PALADIN", specID = {70}}, -- Divine Hammer
		[210256] = {duration = 45, class = "PALADIN", specID = {70}}, -- Blessing of Sanctuary
		[343527] = {duration = 27, class = "PALADIN", specID = {70}}, -- Execution Sentence
		[343721] = {duration = 54, class = "PALADIN", specID = {70}}, -- Final Reckoning

    -- Druid

    [1850] = {duration = 120, class = "DRUID"}, -- Dash
		[252216] = {parent = 1850, duration = 45}, -- Tiger Dash
    [5211] = {duration = 60, class = "DRUID"}, -- Mighty Bash
    [20484] = {duration = 600, class = "DRUID"}, -- Rebirth
    [102359] = {duration = 30, class = "DRUID"}, -- Mass Entanglement
    [102401] = {duration = 15, class = "DRUID"}, -- Wild Charge
    [132469] = {duration = 30, class = "DRUID"}, -- Typhoon
    [391528] = {duration = 60, class = "DRUID"}, -- Convoke the Spirits
    [22812] = {duration = 60, class = "DRUID"}, -- Barkskin
    [29166] = {duration = 180, class = "DRUID"}, -- Innervate
    [108238] = {duration = 90, class = "DRUID"}, -- Renewal
    [22570] = {duration = 20, class = "DRUID"}, -- Maim
    [106839] = {default = true, duration = 15, class = "DRUID"}, -- Skull Bash
    [99] = {duration = 30, class = "DRUID"}, -- Incapacitating Roar
    [106898] = {duration = 60, class = "DRUID"}, -- Stampeding Roar
		[77761] = {parent = 106898, duration = 60}, -- Stampeding Roar
    [102793] = {duration = 60, class = "DRUID"}, -- Ursol's Vortex
    [124974] = {duration = 90, class = "DRUID"}, -- Nature's Vigil

		-- Balance

		[78675] = {default = true, duration = 60, class = "DRUID", specID = {102}}, -- Solar Beam
		[390414] = {duration = 120, class = "DRUID", specID = {102}}, -- Incarnation: Chosen of Elune (Orbital Strike)
			[102560] = {parent = 390414, duration = 90, charges = 2}, -- Incarnation: Chosen of Elune
		[383410] = {duration = 120, class = "DRUID", specID = {102}}, -- Celestial Alignment (Orbital Strike)
			[194223] = {parent = 383410, duration = 90, charges = 2}, -- Celestial Alignment
		[202425] = {duration = 45, class = "DRUID", specID = {102}}, -- Warrior of Elune
		[202770] = {duration = 45, class = "DRUID", specID = {102}}, -- Fury of Elune
		[205636] = {duration = 45, class = "DRUID", specID = {102}}, -- Force of Nature
		[209749] = {duration = 30, class = "DRUID", specID = {102}}, -- Faerie Swarm
		[2782] = {duration = 8, class = "DRUID", specID = {102, 103, 104}}, -- Remove Corruption

		-- Feral

		[5217] = {duration = 30, class = "DRUID", specID = {103}}, -- Tiger's Fury
		[61336] = {duration = {default = 180, [104] = 120}, class = "DRUID", specID = {103, 104}, charges = 2}, -- Survival Instincts
		[102543] = {duration = 120, class = "DRUID", specID = {103}}, -- Incarnation: Avatar of Ashamane
			[106951] = {parent = 102543}, -- Berserk
		[274837] = {duration = 45, class = "DRUID", specID = {103}}, -- Feral Frenzy
		[391888] = {duration = 25, class = "DRUID", specID = {103}}, -- Adaptive Swarm

		-- Guardian

		[22842] = {duration = 36, class = "DRUID", specID = {104}}, -- Frenzied Regeneration
		[102558] = {duration = 180, class = "DRUID", specID = {104}}, -- Incarnation: Guardian of Ursoc
		[200851] = {duration = 60, class = "DRUID", specID = {104}}, -- Rage of the Sleeper
		[202246] = {duration = 25, class = "DRUID", specID = {104}}, -- Overrun
		[80313] = {duration = 45, class = "DRUID", specID = {104}}, -- Pulverize
		[204066] = {duration = 60, class = "DRUID", specID = {104}}, -- Lunar Beam
		[201664] = {duration = 30, class = "DRUID", specID = {104}}, -- Demoralizing Roar
		[354654] = {duration = 60, class = "DRUID", specID = {104}}, -- Grove Protection
		[329042] = {duration = 120, class = "DRUID", specID = {104}}, -- Emerald Slumber

		-- Restoration

		[740] = {duration = 150, class = "DRUID", specID = {105}}, -- Tranquility
		[18562] = {duration = 15, class = "DRUID", specID = {105}, charges = 2}, -- Swiftmend
		[33891] = {duration = 180, class = "DRUID", specID = {105}}, -- Incarnation: Tree of Life
		[102342] = {duration = 90, class = "DRUID", specID = {105}}, -- Ironbark
		[102351] = {duration = 20, class = "DRUID", specID = {105}}, -- Cenarion Ward
		[197721] = {duration = 60, class = "DRUID", specID = {105}}, -- Flourish
		[203651] = {duration = 60, class = "DRUID", specID = {105}}, -- Overgrowth
		[392160] = {duration = 20, class = "DRUID", specID = {105}}, -- Invigorate
		[305497] = {duration = 45, class = "DRUID", specID = {102, 103, 105}}, -- Thorns
		[88423] = {duration = 8, class = "DRUID", specID = {105}}, -- Nature's Cure
	        [102693] = {duration = 20, class = "DRUID", specID = {105}, charges = 3}, -- Grove Guardians
		[132158] = {duration = 60, class = "DRUID", specID = {105}, charges = 2}, -- Nature's Swiftness

    -- Warrior

    [100] = {duration = 18, class = "WARRIOR", charges = 2}, -- Charge
    [3411] = {duration = 38, class = "WARRIOR", charges = 2}, -- Intervene
    [6544] = {duration = 35, class = "WARRIOR"}, -- Heroic Leap
    [6552] = {default = true, duration = 14, class = "WARRIOR"}, -- Pummel
    [18499] = {duration = 60, class = "WARRIOR"}, -- Berserker Rage
		[384100] = {parent = 18499, duration = 60}, -- Berserker Shout
    [23920] = {duration = 24, class = "WARRIOR"}, -- Spell Reflection
    [46968] = {duration = 40, class = "WARRIOR"}, -- Shockwave
    [107570] = {duration = 28, class = "WARRIOR"}, -- Storm Bolt
    [107574] = {duration = 90, class = "WARRIOR"}, -- Avatar
    [236077] = {duration = 45, class = "WARRIOR"}, -- Disarm
    [376079] = {duration = 90, class = "WARRIOR"}, -- Spear of Bastion
    [5246] = {duration = 75, class = "WARRIOR"}, -- Intimidating Shout
		[316593] = {parent = 5246, duration = 75}, -- Intimidating Shout (Menace)
    [97462] = {duration = 180, class = "WARRIOR"}, -- Rallying Cry
    [386208] = {duration = 3, class = "WARRIOR"}, -- Defensive Stance
    [384318] = {duration = 45, class = "WARRIOR"}, -- Thunderous Roar
    [228920] = {duration = 60, class = "WARRIOR", charges = 2}, -- Ravager
    [436358] = {duration = 45, class = "WARRIOR", specID = {71,73}}, -- Demolish
    [64382] = {duration = 180, class = "WARRIOR"}, -- Shattering Throw
    [384110] = {duration = 45, class = "WARRIOR"}, -- Wrecking Throw

		-- Arms

		[118038] = {duration = 85, class = "WARRIOR", specID = {71}}, -- Die by the Sword
		[167105] = {duration = 45, class = "WARRIOR", specID = {71}}, -- Colossus Smash
			[262161] = {parent = 167105}, -- Warbreaker
		[198817] = {duration = 30, class = "WARRIOR", specID = {71}}, -- Sharpen Blade
		[227847] = {duration = 60, class = "WARRIOR", specID = {71,72}}, -- Bladestorm
		[236273] = {duration = 60, class = "WARRIOR", specID = {71}}, -- Duel
		[236320] = {duration = 90, class = "WARRIOR", specID = {71}}, -- War Banner
		[260643] = {duration = 21, class = "WARRIOR", specID = {71}}, -- Skullsplitter

		-- Fury

		[184364] = {duration = 114, class = "WARRIOR", specID = {72}}, -- Enraged Regeneration
		[385059] = {duration = 45, class = "WARRIOR", specID = {72}}, -- Odyn's Fury
		[1719] = {duration = 90, class = "WARRIOR", specID = {72}}, -- Recklessness
	        [315720] = {duration = 15, class = "WARRIOR", specID = {72}}, -- Onslaught

		-- Protection

		[871] = {duration = 156, class = "WARRIOR", specID = {73}}, -- Shield Wall
		[1160] = {duration = 30, class = "WARRIOR", specID = {73}}, -- Demoralizing Shout
		[12975] = {duration = 180, class = "WARRIOR", specID = {73}}, -- Last Stand
		[206572] = {duration = 20, class = "WARRIOR", specID = {73}}, -- Dragon Charge
		[213871] = {duration = 15, class = "WARRIOR", specID = {73}}, -- Bodyguard
		[386071] = {duration = 90, class = "WARRIOR", specID = {73}}, -- Disrupting Shout
		[392966] = {duration = 90, class = "WARRIOR", specID = {73}}, -- Spell Block
		[385952] = {duration = 45, class = "WARRIOR", specID = {73}}, -- Shield Charge

    -- Warlock

    [6358] = {duration = 30, class = "WARLOCK"}, -- Seduction
		[115268] = {parent = 6358}, -- Mesmerize
    [6360] = {duration = 25, class = "WARLOCK"}, -- Whiplash
		[115770] = {parent = 6360}, -- Fellash
    [6789] = {duration = 45, class = "WARLOCK"}, -- Mortal Coil
    [20707] = {duration = 600, class = "WARLOCK"}, -- Soulstone
    [30283] = {duration = 60, class = "WARLOCK"}, -- Shadowfury
    [104773] = {duration = 180, class = "WARLOCK"}, -- Unending Resolve
    [108416] = {duration = 45, class = "WARLOCK"}, -- Dark Pact
    [119910] = {default = true, duration = 24, class = "WARLOCK"}, -- Spell Lock (Command Demon)
		[19647] = {parent = 119910}, -- Spell Lock (Felhunter)
		[119911] = {parent = 119910}, -- Optical Blast (Command Demon)
		[115781] = {parent = 119910}, -- Optical Blast (Observer)
		[132409] = {parent = 119910}, -- Spell Lock (Grimoire of Sacrifice)
		[171138] = {parent = 119910}, -- Shadow Lock (Doomguard)
		[171139] = {parent = 119910}, -- Shadow Lock (Grimoire of Sacrifice)
		[171140] = {parent = 119910}, -- Shadow Lock (Command Demon)
    [212295] = {duration = 45, class = "WARLOCK"}, -- Nether Ward
    [5484] = {duration = 40, class = "WARLOCK"}, -- Howl of Terror
    [384069] = {duration = 15, class = "WARLOCK"}, -- Shadowflame
    [353294] = {duration = 60, class = "WARLOCK"}, -- Shadow Rift
    [48020] = {duration = 30, class = "WARLOCK"}, -- Demonic Circle Teleport
    [333889] = {duration = 90, class = "WARLOCK"}, -- Fel Domination
    [328774] = {duration = 45, class = "WARLOCK"}, -- Amplify Curse
    [410598] = {duration = 60, class = "WARLOCK"}, -- Soul Rip
    [201996] = {duration = 60, class = "WARLOCK"}, -- Call Observer
    [353753] = {duration = 30, class = "WARLOCK"}, -- Bonds of Fel
    [452930] = {duration = 60, class = "WARLOCK"}, -- Demonic Healthstone
    [442726] = {duration = 60, class = "WARLOCK", specID = {265, 267}}, -- Malevolence
    [212623] = {duration = 15, class = "WARLOCK"}, -- Singe Magic
		[89808] = {parent = 212623}, -- Singe Magic
		[119905] = {parent = 212623}, -- Singe Magic

		-- Affliction

		[48181] = {duration = 15, class = "WARLOCK", specID = {265}}, -- Haunt
	        [386951] = {duration = 30, class = "WARLOCK", specID = {265}}, -- Soul Swap
		[205179] = {duration = 45, class = "WARLOCK", specID = {265}}, -- Phantom Singularity
		[205180] = {duration = 120, class = "WARLOCK", specID = {265}}, -- Summon Darkglare
		[386997] = {duration = 60, class = "WARLOCK", specID = {265}}, -- Soul Rot
		[108503] = {duration = 30, class = "WARLOCK", specID = {265, 267}}, -- Grimoire of Sacrifice
	        [417537] = {duration = 45, class = "WARLOCK", specID = {265}}, -- Oblivion

		-- Demonology

		[89751] = {duration = 30, class = "WARLOCK", specID = {266}}, -- Felstorm
			[115831] = {parent = 89751}, -- Wrathstorm
		[89766] = {duration = 30, class = "WARLOCK", specID = {266}}, -- Axe Toss
		[265187] = {duration = 60, class = "WARLOCK", specID = {266}}, -- Summon Demonic Tyrant
		[212459] = {duration = 120, class = "WARLOCK", specID = {266}}, -- Call Fel Lord
		[267171] = {duration = 60, class = "WARLOCK", specID = {266}}, -- Demonic Strength
		[111898] = {duration = 120, class = "WARLOCK", specID = {266}}, -- Grimoire: Felguard
		[386833] = {duration = 45, class = "WARLOCK", specID = {266}}, -- Guillotine
		[264130] = {duration = 30, class = "WARLOCK", specID = {266}}, -- Power Siphon
		[264119] = {duration = 30, class = "WARLOCK", specID = {266}}, -- Summon Vilefiend

		-- Destruction

		[80240] = {duration = 30, class = "WARLOCK", specID = {267}}, -- Havoc
			[200546] = {parent = 80240, duration = 45}, -- Bane of Havoc
		[152108] = {duration = 30, class = "WARLOCK", specID = {267}}, -- Cataclysm
		[196447] = {duration = 20, class = "WARLOCK", specID = {267}}, -- Channel Demonfire
		[387976] = {duration = 45, class = "WARLOCK", specID = {267}, charges = 3}, -- Dimensional Rift
		[1122] = {duration = 120, class = "WARLOCK", specID = {267}}, -- Summon Infernal
		[6353] = {duration = 45, class = "WARLOCK", specID = {267}}, -- Soul Fire

    -- Shaman

    [20608] = {duration = 1800, class = "SHAMAN"}, -- Reincarnation
    [51485] = {duration = 24, class = "SHAMAN"}, -- Earthgrab Totem
    [51514] = {duration = 30, class = "SHAMAN"}, -- Hex
		[196932] = {parent = 51514}, -- Voodoo Totem
		[210873] = {parent = 51514}, -- Hex (Compy)
		[211004] = {parent = 51514}, -- Hex (Spider)
		[211010] = {parent = 51514}, -- Hex (Snake)
		[211015] = {parent = 51514}, -- Hex (Cockroach)
		[269352] = {parent = 51514}, -- Hex (Skeletal Hatchling)
		[277778] = {parent = 51514}, -- Hex (Zandalari Tendonripper)
		[277784] = {parent = 51514}, -- Hex (Wicker Mongrel)
		[309328] = {parent = 51514}, -- Hex (Living Honey)
    [57994] = {default = true, duration = 12, class = "SHAMAN"}, -- Wind Shear
    [108271] = {duration = 90, class = "SHAMAN"}, -- Astral Shift
    [192058] = {duration = 54, class = "SHAMAN"}, -- Capacitor
    [192077] = {duration = 84, class = "SHAMAN"}, -- Wind Rush Totem
    [204331] = {duration = 39, class = "SHAMAN"}, -- Counterstrike Totem
    [8143] = {duration = 54, class = "SHAMAN"}, -- Tremor Totem
    [51490] = {duration = 30, class = "SHAMAN"}, -- Thunderstorm
    [108281] = {duration = 120, class = "SHAMAN"}, -- Ancestral Guidance
    [192063] = {duration = 20, class = "SHAMAN"}, -- Gust of Wind
    [198103] = {duration = 300, class = "SHAMAN"}, -- Earth Elemental
    [305483] = {duration = 45, class = "SHAMAN"}, -- Lightning Lasso
    [375982] = {duration = 30, class = "SHAMAN"}, -- Primordial Wave
	       [428332] = {parent = 375982}, -- Primordial Wave (Restoration)
    [58875] = {duration = 60, class = "SHAMAN"}, -- Spirit Walk
    [79206] = {duration = 120, class = "SHAMAN"}, -- Spiritwalker's Grace
    [204336] = {duration = 24, class = "SHAMAN"}, -- Grounding Totem
    [356736] = {duration = 30, class = "SHAMAN"}, -- Unleash Shield
    [108270] = {duration = 174, class = "SHAMAN"}, -- Stone Bulwark Totem
    [383013] = {duration = 114, class = "SHAMAN"}, -- Poison Cleansing Totem
    [378773] = {duration = 12, class = "SHAMAN"}, -- Greater Purge
    [108285] = {duration = 180, class = "SHAMAN"}, -- Totemic Recall
    [355580] = {duration = 84, class = "SHAMAN"}, -- Static Field Totem
    [378081] = {duration = 60, class = "SHAMAN"}, -- Nature's Swiftness (Shaman)
	       [443454] = {parent = 378081, duration = 30}, -- Ancestral Swiftness
    [444995] = {duration = 24, class = "SHAMAN", specID = {263, 264}}, -- Surging Totem
    [409293] = {duration = 120, class = "SHAMAN"}, -- Burrow

		-- Elemental

		[192222] = {duration = 24, class = "SHAMAN", specID = {262}}, -- Liquid Magma Totem
		[198067] = {duration = 150, class = "SHAMAN", specID = {262}}, -- Fire Elemental
			[192249] = {parent = 198067}, -- Storm Elemental
		[191634] = {duration = 60, class = "SHAMAN", specID = {262}, charges = 2}, -- Stormkeeper
		[117014] = {duration = 12, class = "SHAMAN", specID = {262, 263}}, -- Elemental Blast
		[51886] = {duration = 8, class = "SHAMAN", specID = {262, 263}}, -- Cleanse Spirit
		[114050] = {duration = 180, class = "SHAMAN", specID = {262}}, -- Ascendance (Elemental)

		-- Enhancement

		[196884] = {duration = 30, class = "SHAMAN", specID = {263}}, -- Feral Lunge
		[197214] = {duration = 40, class = "SHAMAN", specID = {263}}, -- Sundering
		[384352] = {duration = 60, class = "SHAMAN", specID = {263}}, -- Doom Winds
		[51533] = {duration = 90, class = "SHAMAN", specID = {263}}, -- Feral Spirits
		[204361] = {duration = 60, class = "SHAMAN", specID = {262,263}}, -- Bloodlust (Shamanism)
			[204362] = {parent = 204361}, -- Heroism (Shamanism)
		[114051] = {duration = 120, class = "SHAMAN", specID = {263}}, -- Ascendance (Enhancement)

		-- Restoration

		[5394] = {duration = 24, class = "SHAMAN", specID = {264}, charges = 2}, -- Healing Stream Totem
		[98008] = {duration = 174, class = "SHAMAN", specID = {264}}, -- Spirit Link Totem
		[108280] = {duration = 129, class = "SHAMAN", specID = {264}}, -- Healing Tide Totem
		[157153] = {duration = 39, class = "SHAMAN", specID = {264}, charges = 2}, -- Cloudburst Totem
		[198838] = {duration = 54, class = "SHAMAN", specID = {264}}, -- Earthen Wall Totem
		[207399] = {duration = 294, class = "SHAMAN", specID = {264}}, -- Ancestral Protection Totem
		[77130] = {duration = 8, class = "SHAMAN", specID = {264}}, -- Purify Spirit
		[114052] = {duration = 120, class = "SHAMAN", specID = {264}}, -- Ascendance (Restoration)

    -- Hunter

    [136] = {duration = 10, class = "HUNTER"}, -- Mend Pet
    [1543] = {duration = 20, class = "HUNTER"}, -- Flare
    [5384] = {duration = 30, class = "HUNTER"}, -- Feign Death
    [53480] = {duration = 60, class = "HUNTER"}, -- Roar of Sacrifice
    [109304] = {duration = 120, class = "HUNTER"}, -- Exhilaration
    [131894] = {duration = 60, class = "HUNTER"}, -- A Murder of Crows
    [186257] = {duration = 150, class = "HUNTER"}, -- Aspect of the Cheetah
    [186265] = {duration = 150, class = "HUNTER"}, -- Aspect of the Turtle
    [187650] = {duration = 25, class = "HUNTER"}, -- Freezing Trap
		[203340] = {parent = 187650}, -- Diamond Ice
    [356719] = {duration = 60, class = "HUNTER"}, -- Chimaeral Sting
    [209997] = {duration = 30, class = "HUNTER"}, -- Play Dead
    [781] = {duration = 20, class = "HUNTER"}, -- Disengage
    [19577] = {duration = 60, class = "HUNTER"}, -- Intimidation
    [109248] = {duration = 45, class = "HUNTER"}, -- Binding Shot
    [34477] = {duration = 45, class = "HUNTER"}, -- Misdirection (Interlope)
    [199483] = {duration = 60, class = "HUNTER"}, -- Camouflage
    [213691] = {duration = 30, class = "HUNTER"}, -- Scatter Shot
    [53271] = {duration = 45, class = "HUNTER"}, -- Master's Call
    [187698] = {duration = 25, class = "HUNTER"}, -- Tar Trap
    [264735] = {duration = 90, class = "HUNTER", charges = 2}, -- Survival of the Fittest
    [19801] = {duration = 10, class = "HUNTER"}, -- Tranquilizing Shot
    [236776] = {duration = 35, class = "HUNTER"}, -- High Explosive Trap
    [462031] = {duration = 55, class = "HUNTER"}, -- Implosive Trap
    [186387] = {duration = 30, class = "HUNTER"}, -- Bursting Shot
    [430703] = {duration = 30, class = "HUNTER", specID = {253, 254}}, -- Black Arrow
    [212431] = {duration = 30, class = "HUNTER"}, -- Explosive Shot

		-- Beast Mastery

		[19574] = {duration = 90, class = "HUNTER", specID = {253}}, -- Bestial Wrath
		[147362] = {default = true, duration = 22, class = "HUNTER", specID = {253, 254}}, -- Counter Shot
		[359844] = {duration = 120, class = "HUNTER", specID = {253}}, -- Call of the Wild
		[205691] = {duration = 120, class = "HUNTER", specID = {253}}, -- Dire Beast: Basilisk
		[356707] = {duration = 60, class = "HUNTER", specID = {253}}, -- Wild Kingdom
		[321530] = {duration = 60, class = "HUNTER", specID = {253}}, -- Bloodshed

		-- Marksmanship

		[260243] = {duration = 45, class = "HUNTER", specID = {254}}, -- Volley
		[400456] = {duration = 45, class = "HUNTER", specID = {254}}, -- Salvo
		[257044] = {duration = 18, class = "HUNTER", specID = {254}}, -- Rapid Fire
		[288613] = {duration = 100, class = "HUNTER", specID = {254}}, -- Trueshot

		-- Survival

		[186289] = {duration = 60, class = "HUNTER", specID = {255}}, -- Aspect of the Eagle
		[187707] = {default = true, duration = 13, class = "HUNTER", specID = {255}}, -- Muzzle
		[190925] = {duration = 20, class = "HUNTER", specID = {255}}, -- Harpoon
		[203415] = {duration = 45, class = "HUNTER", specID = {255}}, -- Fury of the Eagle
		[212640] = {duration = 25, class = "HUNTER", specID = {255}}, -- Mending Bandage
		[360952] = {duration = 60, class = "HUNTER", specID = {255}}, -- Coordinated Assault
		[360966] = {duration = 60, class = "HUNTER", specID = {255}}, -- Spearhead
		[269751] = {duration = 30, class = "HUNTER", specID = {255}}, -- Flanking Strike
		[212638] = {duration = 25, class = "HUNTER", specID = {255}}, -- Tracker's Net
	        [407028] = {duration = 45, class = "HUNTER", specID = {255}}, -- Sticky Tar Bomb

    -- Mage

    [66] = {duration = 300, class = "MAGE"}, -- Invisibility
    [110959] = {duration = 120, class = "MAGE"}, -- Greater Invisibility
    [1953] = {duration = 11, class = "MAGE"}, -- Blink
    [212653] = {duration = 21, class = "MAGE", charges = 2}, -- Shimmer
    [2139] = {default = true, duration = 20, class = "MAGE"}, -- Counterspell
    [11426] = {duration = 25, class = "MAGE"}, -- Ice Barrier
    [45438] = {duration = 180, class = "MAGE"}, -- Ice Block
	        [414658] = {parent = 45438}, -- Ice Cold
    [55342] = {duration = 120, class = "MAGE"}, -- Mirror Image
    [80353] = {duration = 300, class = "MAGE"}, -- Time Warp
    [108839] = {duration = 20, class = "MAGE", charges = 3}, -- Ice Floes
    [113724] = {duration = 45, class = "MAGE"}, -- Ring of Frost
    [389713] = {duration = 45, class = "MAGE"}, -- Displacement
    [31661] = {duration = 45, class = "MAGE"}, -- Dragon's Breath
    [157981] = {duration = 25, class = "MAGE"}, -- Blast Wave
    [382440] = {duration = 60, class = "MAGE"}, -- Shifting Power
    [157997] = {duration = 25, class = "MAGE"}, -- Ice Nova
    [353082] = {duration = 25, class = "MAGE"}, -- Ring of Fire
    [352278] = {duration = 90, class = "MAGE"}, -- Ice Wall
    [122] = {duration = 30, class = "MAGE", charges = 2}, -- Frost Nova
    [342245] = {duration = 50, class = "MAGE"}, -- Alter Time
    [475] = {duration = 8, class = "MAGE"}, -- Remove Curse
    [157980] = {duration = 45, class = "MAGE"}, -- Supernova
		[449700] = {parent = 157980, duration = 40}, -- Gravity Lapse
    [414660] = {duration = 180, class = "MAGE"}, -- Mass Barrier
    [383121] = {duration = 60, class = "MAGE"}, -- Mass Polymorph
    [414664] = {duration = 60, class = "MAGE"}, -- Mass Invisibility

		-- Arcane

		[365350] = {duration = 90, class = "MAGE", specID = {62}}, -- Arcane Surge
		[12051] = {duration = 90, class = "MAGE", specID = {62}}, -- Evocation
		[153626] = {duration = 20, class = "MAGE", specID = {62}, charges = 2}, -- Arcane Orb
		[205025] = {duration = 45, class = "MAGE", specID = {62}}, -- Presence of Mind
		[198100] = {duration = 20, class = "MAGE", specID = {62}}, -- Spellsteal (Kleptomania)
		[198111] = {duration = 45, class = "MAGE", specID = {62}}, -- Temporal Shield
		[353128] = {duration = 45, class = "MAGE", specID = {62}}, -- Arcanosphere
		[321507] = {duration = 45, class = "MAGE", specID = {62}}, -- Touch of the Magi

		-- Fire

		[108853] = {duration = 12, class = "MAGE", specID = {63}, charges = 3}, -- Fire Blast
		[190319] = {duration = 120, class = "MAGE", specID = {63}}, -- Combustion
		[194466] = {duration = 25, class = "MAGE", specID = {63}, charges = 3}, -- Phoenix's Flames
		[203286] = {duration = 15, class = "MAGE", specID = {63}}, -- Greater Pyroblast
	        [153561] = {duration = 35, class = "MAGE", specID = {63}}, -- Meteor

		-- Frost

		[12472] = {duration = 120, class = "MAGE", specID = {64}}, -- Icy Veins
			[198144] = {parent = 12472, duration = 60}, -- Ice Form
		[84714] = {duration = 60, class = "MAGE", specID = {64}}, -- Frozen Orb
		[153595] = {duration = 30, class = "MAGE", specID = {64}}, -- Comet Storm
		[205021] = {duration = 60, class = "MAGE", specID = {64}}, -- Ray of Frost
		[389794] = {duration = 45, class = "MAGE", specID = {64}}, -- Snowdrift
		[390612] = {duration = 15, class = "MAGE", specID = {64}}, -- Frost Bomb
		[235219] = {duration = 300, class = "MAGE", specID = {64}}, -- Cold Snap

    -- Rogue

    [1725] = {duration = 30, class = "ROGUE"}, -- Distract
    [1766] = {default = true, duration = 15, class = "ROGUE"}, -- Kick
    [1856] = {duration = 120, class = "ROGUE", charges = 2}, -- Vanish
    [2983] = {duration = 60, class = "ROGUE"}, -- Sprint
    [31224] = {duration = 120, class = "ROGUE"}, -- Cloak of Shadows
    [57934] = {duration = 30, class = "ROGUE"}, -- Tricks of the Trade
    [152150] = {duration = 30, class = "ROGUE"}, -- Death from Above
    [408] = {duration = 30, class = "ROGUE"}, -- Kidney Shot
    [5277] = {duration = 120, class = "ROGUE"}, -- Evasion
    [36554] = {duration = 30, class = "ROGUE", charges = 2}, -- Shadowstep
    [5938] = {duration = 30, class = "ROGUE", charges = 2}, -- Shiv
    [207777] = {duration = 45, class = "ROGUE"}, -- Dismantle
    [381623] = {duration = 60, class = "ROGUE", specID = {63}, charges = 3}, -- Thistle Tea
    [1776] = {duration = 25, class = "ROGUE"}, -- Gouge
    [2094] = {duration = {default = 120, [260] = 90}, class = "ROGUE"}, -- Blind
    [212182] = {duration = 180, class = "ROGUE", specID = {259, 260}}, -- Smoke Bomb
    [359053] = {duration = 120, class = "ROGUE", specID = {261}}, -- Smoke Bomb (Subtlety)
    [382245] = {duration = 45, class = "ROGUE"}, -- Cold Blood
    [185311] = {duration = 30, class = "ROGUE"}, -- Crimson Vial

		-- Assassination

		[703] = {duration = 6, class = "ROGUE", specID = {259}}, -- Garrote
		[360194] = {duration = 120, class = "ROGUE", specID = {259}}, -- Deathmark
		[385627] = {duration = 60, class = "ROGUE", specID = {259}}, -- Kingsbane

		-- Outlaw

		[13750] = {duration = 180, class = "ROGUE", specID = {260}}, -- Adrenaline Rush
		[51690] = {duration = 90, class = "ROGUE", specID = {260}}, -- Killing Spree
		[195457] = {duration = 30, class = "ROGUE", specID = {260}, charges = 2}, -- Grappling Hook
		[315341] = {duration = 45, class = "ROGUE", specID = {260}}, -- Between the Eyes
		[196937] = {duration = 90, class = "ROGUE", specID = {260}}, -- Ghostly Strike
		[271877] = {duration = 45, class = "ROGUE", specID = {260}}, -- Blade Rush

		-- Subtlety

		[121471] = {duration = 90, class = "ROGUE", specID = {261}}, -- Shadow Blades
	        [185313] = {duration = 50, class = "ROGUE", charges = 2}, -- Shadow Dance
		[207736] = {duration = 120, class = "ROGUE", specID = {261}}, -- Shadowy Duel
		[384631] = {duration = 90, class = "ROGUE", specID = {261}}, -- Flagellation
		[280719] = {duration = 45, class = "ROGUE", specID = {261}}, -- Secret Technique
	        [426591] = {duration = 45, class = "ROGUE", specID = {261}}, -- Goremaw's Bite
	        [212283] = {duration = 25, class = "ROGUE", specID = {261}}, -- Symbols of Death

    -- Monk

    [109132] = {duration = 15, class = "MONK", charges = 3}, -- Roll
		[115008] = {parent = 109132, charges = 2, duration = 20}, -- Chi Torpedo
    [115078] = {duration = 30, class = "MONK"}, -- Paralysis
    [116841] = {duration = 30, class = "MONK"}, -- Tiger's Lust
    [116844] = {duration = 40, class = "MONK"}, -- Ring of Peace
    [119381] = {duration = 50, class = "MONK"}, -- Leg Sweep
    [119996] = {duration = 45, class = "MONK"}, -- Transcendence: Transfer
    [122783] = {duration = 90, class = "MONK"}, -- Diffuse Magic
    [115203] = {duration = 90, class = "MONK"}, -- Fortifying Brew
    [116705] = {default = true, duration = 15, class = "MONK"}, -- Spear Hand Strike
    [322109] = {duration = 180, class = "MONK"}, -- Touch of Death
    [324312] = {duration = 60, class = "MONK"}, -- Clash
    [443028] = {duration = 90, class = "MONK", specID = {269, 270}}, -- Celestial Conduit
    [233759] = {duration = 45, class = "MONK"}, -- Grapple Weapon

		-- Brewmaster

		[115399] = {duration = 120, class = "MONK", specID = {268}}, -- Black Ox Brew
		[132578] = {duration = 180, class = "MONK", specID = {268}}, -- Invoke Niuzao, the Black Ox
		[202162] = {duration = 45, class = "MONK", specID = {268}}, -- Avert Harm
		[115181] = {duration = 15, class = "MONK", specID = {268}}, -- Breath of Fire
		[387184] = {duration = 120, class = "MONK", specID = {268}}, -- Weapons of Order
		[202335] = {duration = 45, class = "MONK", specID = {268}}, -- Double Barrel
		[325153] = {duration = 60, class = "MONK", specID = {268}}, -- Exploding Keg
		[115176] = {duration = 150, class = "MONK", specID = {268}}, -- Zen Meditation
		[354540] = {duration = 90, class = "MONK", specID = {268}}, -- Nimble Brew
		[218164] = {duration = 8, class = "MONK", specID = {268, 269}}, -- Detox
	        [122278] = {duration = 120, class = "MONK", specID = {268}}, -- Dampen Harm

		-- Windwalker

		[101545] = {duration = 30, class = "MONK", specID = {269}}, -- Flying Serpent Kick
		[113656] = {duration = 24, class = "MONK", specID = {269}}, -- Fists of Fury
		[122470] = {duration = 90, class = "MONK", specID = {269}}, -- Touch of Karma
		[123904] = {duration = 120, class = "MONK", specID = {269}}, -- Invoke Xuen, the White Tiger
		[137639] = {duration = 90, class = "MONK", specID = {269}, charges = 2}, -- Storm, Earth, and Fire
		[152175] = {duration = 24, class = "MONK", specID = {269}}, -- Whirling Dragon Punch
		[392983] = {duration = 30, class = "MONK", specID = {269}}, -- Strike of the Windlord

		-- Mistweaver

		[115310] = {duration = 150, class = "MONK", specID = {270}}, -- Revival
			[388615] = {parent = 115310, duration = 150}, -- Restoral
		[116680] = {duration = 30, class = "MONK", specID = {270}}, -- Thunder Focus Tea
		[116849] = {duration = 75, class = "MONK", specID = {270}}, -- Life Cocoon
		[198898] = {duration = 30, class = "MONK", specID = {270}}, -- Song of Chi-Ji
		[205234] = {duration = 15, class = "MONK", specID = {270}, charges = 3}, -- Healing Sphere
		[388193] = {duration = 30, class = "MONK", specID = {269, 270}}, -- Jadefire Stomp
		[322118] = {duration = 180, class = "MONK", specID = {270}}, -- Invoke Yu'Lon, the Jade Serpent
		[325197] = {duration = 60, class = "MONK", specID = {270}}, -- Invoke Chi-Ji, the Red Crane
		[115450] = {duration = 8, class = "MONK", specID = {270}}, -- Detox

    -- Evoker

    [363916] = {duration = 90, class = "EVOKER", charges = 2}, -- Obsidian Scales
    [358385] = {duration = 60, class = "EVOKER"}, -- Landslide
    [360995] = {duration = 16, class = "EVOKER"}, -- Verdant Embrace
    [357214] = {duration = 60, class = "EVOKER"}, -- Wing Buffet
    [368970] = {duration = 180, class = "EVOKER"}, -- Tail Swipe
    [351338] = {default = true, duration = {default = 20, [1468] = 40}, class = "EVOKER"}, -- Quell
    [374251] = {duration = 60, class = "EVOKER"}, -- Cauterizing Flame
    [360806] = {duration = 15, class = "EVOKER"}, -- Sleep Walk
    [370553] = {duration = 120, class = "EVOKER"}, -- Tip the Scales
    [368432] = {duration = 9, class = "EVOKER"}, -- Unravel
    [372048] = {duration = 120, class = "EVOKER"}, -- Oppressing Roar
    [370665] = {duration = 60, class = "EVOKER"}, -- Rescue
    [374348] = {duration = 90, class = "EVOKER"}, -- Renewing Blaze
    [374968] = {duration = 120, class = "EVOKER"}, -- Time Spiral
    [374227] = {duration = 120, class = "EVOKER"}, -- Zephyr
    [358267] = {duration = 25, class = "EVOKER", charges = 2}, -- Hover
    [357208] = {duration = 30, class = "EVOKER"}, -- Fire Breath
    [357210] = {duration = {default = 120, [1467] = 60}, class = "EVOKER"}, -- Deep Breath
	[433874] = {parent = 357210, duration = 60}, -- Deep Breath (Maneuverability)
    [383005] = {duration = 45, class = "EVOKER"}, -- Chrono Loop
    [378441] = {duration = 45, class = "EVOKER"}, -- Time Stop
    [370388] = {duration = 90, class = "EVOKER"}, -- Swoop Up
    [406732] = {duration = 180, class = "EVOKER"}, -- Spatial Paradox
    [443328] = {duration = 30, class = "EVOKER", specID = {1467, 1468}, charges = 2}, -- Engulf
    [378464] = {duration = 90, class = "EVOKER"}, -- Nullifying Shroud

		-- Devastation

		[375087] = {duration = 120, class = "EVOKER", specID = {1467}}, -- Dragonrage
		[370452] = {duration = 20, class = "EVOKER", specID = {1467}}, -- Shattering Star
		[368847] = {duration = 20, class = "EVOKER", specID = {1467}}, -- Firestorm
		[359073] = {duration = 30, class = "EVOKER", specID = {1467}}, -- Eternity Surge
		[365585] = {duration = 8, class = "EVOKER", specID = {1467}}, -- Expunge

		-- Preservation

		[355936] = {duration = 30, class = "EVOKER", specID = {1468}}, -- Dream Breath
		[363534] = {duration = 180, class = "EVOKER", specID = {1468}, charges = 2}, -- Rewind
		[367226] = {duration = 30, class = "EVOKER", specID = {1468}}, -- Spiritbloom
		[357170] = {duration = 60, class = "EVOKER", specID = {1468}}, -- Time Dilation
		[370960] = {duration = 180, class = "EVOKER", specID = {1468}}, -- Emerald Communion
		[359816] = {duration = 120, class = "EVOKER", specID = {1468}}, -- Dream Flight
		[370537] = {duration = 90, class = "EVOKER", specID = {1468}}, -- Stasis
		[377509] = {duration = 60, class = "EVOKER", specID = {1468, 1473}}, -- Dream Projection
		[360823] = {duration = 8, class = "EVOKER", specID = {1468}}, -- Naturalize

	        -- Augmentation

		[395152] = {duration = 30, class = "EVOKER", specID = {1473}}, -- Ebon Might
		[408092] = {duration = 40, class = "EVOKER", specID = {1473}}, -- Upheaval
		[403631] = {duration = 120, class = "EVOKER", specID = {1473}}, -- Breath of Eons
			[442204] = {parent = 403631}, -- Breath of Eons (Maneuverability)
		[408233] = {duration = 60, class = "EVOKER", specID = {1473}}, -- Bestow Weyrnstone
		[360827] = {duration = 30, class = "EVOKER", specID = {1473}}, -- Blistering Scales
		[409311] = {duration = 12, class = "EVOKER", specID = {1473}, charges = 2}, -- Prescience
	        [404977] = {duration = 180, class = "EVOKER", specID = {1473}}, -- Time Skip
}
