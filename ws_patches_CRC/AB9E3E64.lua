apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Konjiki no Gashbell - Yuujou Tag Battle [NTSC-J] (SLPS-25358)
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x0011AE74,0x3c013f40)
eeObj.WriteMem32(0x0011AE9C,0x4481F000)
eeObj.WriteMem32(0x002D5DF0,0x080d9192)
eeObj.WriteMem32(0x00364640,0x080d9198)
eeObj.WriteMem32(0x00364648,0x461e0fc3)
eeObj.WriteMem32(0x0036464c,0x46010043)
eeObj.WriteMem32(0x00364650,0x461e0842)
eeObj.WriteMem32(0x00364654,0xe61f0068)
eeObj.WriteMem32(0x00364658,0x080b577e)
end

emuObj.AddVsyncHook(widescreen)