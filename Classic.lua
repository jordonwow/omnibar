local addonName, addon = ...

if WOW_PROJECT_ID ~= WOW_PROJECT_CLASSIC then return end

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
