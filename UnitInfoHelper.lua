local addonName, addon = ...

addon.arenaInfo = {
    unitGUID = {},

    -- Only supports arena1/2/3 (via GetArenaOpponentSpec) and player
    -- Key: unitGUID, value: spec ID
    spec = {},

    -- Key: unitGUID-spellID, value: whether opt charge is enabled
    charges = {},
};

local arenaInfoFrame = CreateFrame('Frame');
arenaInfoFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
arenaInfoFrame:RegisterEvent("ARENA_PREP_OPPONENT_SPECIALIZATIONS");
arenaInfoFrame:SetScript("OnEvent", function ()
    addon.arenaInfo.unitGUID = {};
    addon.arenaInfo.spec = {};
    addon.arenaInfo.charges = {};
end);

local arenaInfo = addon.arenaInfo;

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

addon.EnableCharges = function (sourceGUID, spellID)
    arenaInfo.charges[sourceGUID.."-"..spellID] = true
end

addon.GetCharges = function (sourceGUID, spellID)
    if arenaInfo.charges[sourceGUID.."-"..spellID] then
        return 1
    end
end
