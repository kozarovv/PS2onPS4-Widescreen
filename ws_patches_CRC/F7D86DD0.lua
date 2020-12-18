apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=3D Kakutou Tsukuru 2 [NTSC-J] (PBPX-95201)(SLPS-20214)
--comment=Widescreen hack by Little Giant

eeObj.WriteMem32(0x002b59c4,0x3c013f40)
eeObj.WriteMem32(0x002b59c8,0x44810000)
eeObj.WriteMem32(0x002b59d0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)