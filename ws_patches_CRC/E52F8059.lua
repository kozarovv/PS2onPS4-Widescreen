apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ghost Vibration (J)(SLPS-25131)
--comment=Widescreen Hack (pnach by Arapapa)

eeObj.WriteMem32(0x001ce730,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)