apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (pnach by Arapapa)

eeObj.WriteMem32(0x011049AC,0x3Ff3cf35)
end

emuObj.AddVsyncHook(widescreen)