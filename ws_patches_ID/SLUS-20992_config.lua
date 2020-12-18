apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Catwoman (U)(SLUS-20992)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom fix (Internal Widescreen)
--593f013c 9a992134
--803f013c 00000000
eeObj.WriteMem32(0x00116c64,0x3c013f80)
eeObj.WriteMem32(0x00116c68,0x00000000)
end

emuObj.AddVsyncHook(widescreen)