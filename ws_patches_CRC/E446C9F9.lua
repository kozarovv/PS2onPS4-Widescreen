apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=One Piece - Grand Adventure (K)(SLKA-25388))
--comment=Widescreen Hack by ElHecht (NTSC-K by Arapapa)

eeObj.WriteMem32(0x002b4ed8,0x3c013f40)
eeObj.WriteMem32(0x002b4eec,0x4481f000)
eeObj.WriteMem32(0x002b4f30,0x461ec602)
end

emuObj.AddVsyncHook(widescreen)