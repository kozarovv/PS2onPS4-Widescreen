apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ghost Vibration(K) (SLPM_675.26)
--comment=Widescreen Hack (pnach by Arapapa)

eeObj.WriteMem32(0x001d7380,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)