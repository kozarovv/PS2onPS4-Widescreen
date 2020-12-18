apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=One Piece Grand Battle! 3 [NTSC-J] (SLPS-25315)
--comment=Widescreen Hack
eeObj.WriteMem32(0x0035CCF0,0x3f400000)
--eeObj.WriteMem32(0x0036E430,0x43B40000)
end

emuObj.AddVsyncHook(widescreen)