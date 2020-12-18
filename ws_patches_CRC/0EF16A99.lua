apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x00137ed4,0x3c023ff3)
eeObj.WriteMem32(0x00137edc,0x3442cf35)
end

emuObj.AddVsyncHook(widescreen)