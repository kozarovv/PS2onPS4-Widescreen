apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by pelvicthrustman

eeObj.WriteMem32(0x0022d8e4,0x3c013f40)
eeObj.WriteMem32(0x0022d8e8,0x44810000)
eeObj.WriteMem32(0x0022d8f0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)