apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Vexx (NTSC-K)(SLKA-25121)
--comment=Widescreen hack by El_Patas (NTSC-K by Arapapa)

--Widescreen hack 16:9

--803f033c e401a1c7 9800a3af
eeObj.WriteMem32(0x0035d8fc,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)