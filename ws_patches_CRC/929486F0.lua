apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Stella Deus - The Gate of Eternity (J) (SLPM_656.85)
--comment=Widescreen Hack (pnach NTSC-J by Arapapa)

eeObj.WriteMem32(0x002F8450,0x44c00000)
end

emuObj.AddVsyncHook(widescreen)