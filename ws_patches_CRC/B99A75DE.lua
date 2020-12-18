apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Warriors (U)(SLUS-21215)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Fix '4:3 Screen'
--eeObj.WriteMem32(0x00194ec4,0x3c013fe3)
--eeObj.WriteMem32(0x00194ec8,0x34218e3e)


--Fix 'Internal Widecscreen'
--d53f013c 1d552134 (2nd)
eeObj.WriteMem32(0x00194e8c,0x3c013fe3)
eeObj.WriteMem32(0x00194e90,0x34218e3e)
end

emuObj.AddVsyncHook(widescreen)