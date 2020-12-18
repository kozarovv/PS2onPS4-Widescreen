apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shadow of Memories (J) (SLPM_650.13)
--comment=Widescreen Hack (pnach NTSC-J by Arapapa)
eeObj.WriteMem32(0x002102e8,0x3c014455)
eeObj.WriteMem32(0x00210300,0x3c013ac8)
end

emuObj.AddVsyncHook(widescreen)