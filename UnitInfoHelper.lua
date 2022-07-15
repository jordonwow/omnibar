local addonName, addon = ...

local arenaInfo = {
    unitGUID = {},

    -- Only supports arena1/2/3 (via GetArenaOpponentSpec) and player
    -- Key: unitGUID, value: spec ID
    spec = {},

    -- Key: unitGUID-spellID, value: whether opt charge is enabled
    charges = {},

    -- Key: unitGUID-spellID, value: whether opt_lower_cd is enabled
    opt_lower_cd = {},

    -- Key: unitGUID, value: whether Fist of Justice is disabled
    no_hoj_cdr = {},
};

local arenaInfoFrame = CreateFrame('Frame');
arenaInfoFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
arenaInfoFrame:RegisterEvent("ARENA_PREP_OPPONENT_SPECIALIZATIONS");
arenaInfoFrame:SetScript("OnEvent", function ()
    arenaInfo.unitGUID = {};
    arenaInfo.spec = {};
    arenaInfo.charges = {};
    arenaInfo.opt_lower_cd = {};
    arenaInfo.no_hoj_cdr = {};
end);

local function updateArenaInfo(unitId, index)
    if ( not arenaInfo.unitGUID[unitId] ) then
        arenaInfo.unitGUID[unitId] = UnitGUID(unitId);
    end

    local unitGUID = arenaInfo.unitGUID[unitId];
    if index and ( not arenaInfo.spec[unitGUID] ) then
        arenaInfo.spec[unitGUID] = GetArenaOpponentSpec(index);
    end
end

local function arenaUnitGUID(unitId, index)
    if UnitExists(unitId) then
        updateArenaInfo(unitId, index)
    end

    return arenaInfo.unitGUID[unitId];
end

addon.IsSourceArena = function (sourceGUID)
    for i = 1, addon.MAX_ARENA_SIZE do
        if ( sourceGUID == arenaUnitGUID("arena"..i, i) ) then
            return true
        end
    end
end

addon.EnableOptCharges = function (sourceGUID, spellID)
    arenaInfo.charges[sourceGUID .. "-" .. spellID] = true
end

addon.GetOptCharges = function (sourceGUID, spellID)
    if arenaInfo.charges[sourceGUID .. "-" .. spellID] then
        return 1
    end
end

addon.EnableOptLowerCooldown = function (sourceGUID, spellID)
    arenaInfo.opt_lower_cd[sourceGUID .. "-" .. spellID] = true
end

addon.DisableFistOfJustice = function (sourceGUID)
    arenaInfo.no_hoj_cdr[sourceGUID] = true
end

addon.FistOfJusticeDisabled = function (sourceGUID)
    return arenaInfo.no_hoj_cdr[sourceGUID]
end
