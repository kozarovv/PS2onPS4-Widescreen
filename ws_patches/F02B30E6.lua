apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Demolition Girl (K)(SLKA-15054)
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001f34c4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)