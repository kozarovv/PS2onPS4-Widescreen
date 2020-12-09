apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (pnach by Arapapa)

eeObj.WriteMem32(0x00291484,0x3c023ec0)
end

emuObj.AddVsyncHook(widescreen)