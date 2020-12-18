apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=One Piece - Pirates Carnival (K)(SLKA-25351)
--comment=Widescreen Hack by Little Giant (NTSC-K by Arapapa)

eeObj.WriteMem32(0x001c922c,0x3c023fe3)
eeObj.WriteMem32(0x001c9230,0x34428e39)
eeObj.WriteMem32(0x001d8b1c,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)