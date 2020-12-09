apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Arc the Lad - Twilight of the Spirits (K) (SCKA_20012)
--comment=Widescreen hack (pnach by Arapapa)

--16:9
eeObj.WriteMem32(0x00256884,0x3F19999A)
eeObj.WriteMem32(0x00256d40,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)