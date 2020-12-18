apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0029aee8,0x3c013f22)
eeObj.WriteMem32(0x0021fe74,0x3c013f22)
eeObj.WriteMem32(0x00563CB0,0x44550000)
end

emuObj.AddVsyncHook(widescreen)