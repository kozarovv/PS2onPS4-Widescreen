apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown! vs Raw 2010 (K)(SLKA-25463)
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x002d97bc,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)