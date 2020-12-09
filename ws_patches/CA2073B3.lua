apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=One Piece - Grand Battle! Combat Rush (K)(SLKA-25299)
--comment=Widescreen Hack (NTSC-K by Arapapa)
eeObj.WriteMem32(0x004241C8,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)