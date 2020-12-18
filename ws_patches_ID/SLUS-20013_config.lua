apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tony Hawks Pro Skater 3 (SLUS_20013)
--comment=Widescreen hack by No.47

--(A) horizontal FOV - single player

--gameplay & park editor (without pressing select)
eeObj.WriteMem32(0x0017c060,0x3c013ff3)
eeObj.WriteMem32(0x0017c064,0x3421cf00)

--gameplay & park editor (after pressing select)
eeObj.WriteMem32(0x001f34d4,0x3c013ff3)
eeObj.WriteMem32(0x001f34d8,0x3421cf00)

--menu
eeObj.WriteMem32(0x001f7f08,0x3c013ff3)
eeObj.WriteMem32(0x001f7f0c,0x3421cf00)

--(B) horizontal FOV - vertical splitscreen

--gameplay (without pressing select)
eeObj.WriteMem32(0x0017c080,0x3c013f73)
eeObj.WriteMem32(0x0017c084,0x3421cf00)

--gameplay (after pressing select)
eeObj.WriteMem32(0x001f34f4,0x3c013f73)
eeObj.WriteMem32(0x001f34f8,0x3421cf00)

--(C) horizontal FOV - horizontal splitscreen

--gameplay (without pressing select)
eeObj.WriteMem32(0x0017c0d4,0x3c014073)
eeObj.WriteMem32(0x0017c0d8,0x3421cf00)

--gameplay (after pressing select)
eeObj.WriteMem32(0x001f3514,0x3c014073)
eeObj.WriteMem32(0x001f3518,0x3421cf00)
end

emuObj.AddVsyncHook(widescreen)