apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE SmackDown! vs Raw 2008 (K)(SLKA-25365)
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x00288ce0,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)