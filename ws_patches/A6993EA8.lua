apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Time Crisis 3 (K) (SCKA_200.15)
--comment=Widescreen Hack (pnach by Arapapa)

eeObj.WriteMem32(0x01EAC04C,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)