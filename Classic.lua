local addonName, addon = ...

if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then return end

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
    -- Classic Interrupts
    [16979] = { default = true, duration = 15, class = "DRUID" }, -- Feral Charge
    [2139] = { default = true, duration = 30, class = "MAGE" }, -- Mage
    [1766] = { default = true, duration = 10, class = "ROGUE" }, -- Rogue
        [1767] = { parent = 1766 },
        [1768] = { parent = 1766 },
        [1769] = { parent = 1766 },
    [6552] = { default = true, duration = 10, class = "WARRIOR" }, -- Pummel
        [6554] = { parent = 6552 },
    [72] = { default = true, duration = 12, class = "WARRIOR" }, -- Shield Bash
        [1671] = { parent = 72 },
        [1672] = { parent = 72 },
    [15487] = { duration = 45, class = "PRIEST" }, -- Silence
}
