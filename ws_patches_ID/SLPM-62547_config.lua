apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sega Ages Vol. 16 Virtua Fighter 2 (NTSC-J) [SLPM-62547]
--comment=Widescreen Hack by FeRcHuLeS

eeObj.WriteMem32(0x00119650,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)