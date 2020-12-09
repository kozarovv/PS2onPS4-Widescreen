apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shining Force NEO (SLUS-212061)
--comment=Widescreen hack by nemesis2000 and paul_met
eeObj.WriteMem32(0x010F5BB8,0x43c00000)
-- eeObj.WriteMem32(0x010F5BBC,0x43BB3333)
eeObj.WriteMem32(0x010F5BB0,0x42800000)
-- eeObj.WriteMem32(0x010f5bb4,0x41A80000)
end

emuObj.AddVsyncHook(widescreen)