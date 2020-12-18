apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kengo 2 (K)(SLKA-25009)
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001e66b8,0x3c013f40)
eeObj.WriteMem32(0x001ab4b4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)