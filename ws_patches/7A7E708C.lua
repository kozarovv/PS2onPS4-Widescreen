apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47 (NTSC-K by Arapapa)

eeObj.WriteMem32(0x001b1934,0x3c01464f)
eeObj.WriteMem32(0x001b1ad8,0x3c01464f)
eeObj.WriteMem32(0x001b1af8,0x3c013f9f)
eeObj.WriteMem32(0x001b1afc,0x34213bdf)
end

emuObj.AddVsyncHook(widescreen)