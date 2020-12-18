apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Konjiki no Gashbell!! Yuujou Tag Battle 2 [NTSC-J] (SLPS-25479)
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x0011D394,0x3c013f40)
eeObj.WriteMem32(0x0011D3BC,0x4481F000)
eeObj.WriteMem32(0x002F7F60,0x080cc736)
eeObj.WriteMem32(0x00331cd0,0x080cc73c)
eeObj.WriteMem32(0x00331cd8,0x461e0fc3)
eeObj.WriteMem32(0x00331cdc,0x46010043)
eeObj.WriteMem32(0x00331ce0,0x461e0842)
eeObj.WriteMem32(0x00331ce4,0xe61f0068)
eeObj.WriteMem32(0x00331ce8,0x080bdfda)
end

emuObj.AddVsyncHook(widescreen)