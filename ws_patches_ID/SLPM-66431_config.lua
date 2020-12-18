apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WinBack 2 - Project Poseidon [NTSC-J] (SLPM-66431)
--comment=Widescreen Hack by Little Giant

eeObj.WriteMem32(0x002f1790,0x3c013f40)
eeObj.WriteMem32(0x002f1794,0x4481f000)
eeObj.WriteMem32(0x002f179c,0x461e0003)
end

emuObj.AddVsyncHook(widescreen)