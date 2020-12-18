apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Time Crisis 2 (K) (SCKA-20002)
--comment=Widescreen Hack (pnach by Arapapa)

eeObj.WriteMem32(0x003cd7fc,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)