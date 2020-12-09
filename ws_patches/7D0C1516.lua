apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--00000000 803f023c 500082ac
--803f023c abaa4234 500082ac
eeObj.WriteMem32(0x0028c0c8,0x3c023faa)
eeObj.WriteMem32(0x0028c0cc,0x3442aaab)
end

emuObj.AddVsyncHook(widescreen)