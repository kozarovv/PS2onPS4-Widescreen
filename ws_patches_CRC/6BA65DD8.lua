apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=NTSC-J Widescreen Hack by synce (pnach NTSC-K by Arapapa)

eeObj.WriteMem32(0x01A3EAC0,0x3f248b43)
end

emuObj.AddVsyncHook(widescreen)