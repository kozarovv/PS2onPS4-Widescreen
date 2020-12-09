apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
eeObj.WriteMem32(0x001a65f0,0x3c013c2e)
eeObj.WriteMem32(0x002644ec,0x3c014440)
--eeObj.WriteMem32(0x00267dd0,0x3C013F40)

--Get rid of black bar
--8642013c 67662134
eeObj.WriteMem32(0x00225ffc,0x3c014000)
eeObj.WriteMem32(0x00226000,0x00000000)
end

emuObj.AddVsyncHook(widescreen)