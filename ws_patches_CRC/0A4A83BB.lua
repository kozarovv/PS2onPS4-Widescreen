apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47

eeObj.WriteMem32(0x001eca80,0x3ef5c28f)

eeObj.WriteMem32(0x00187fc8,0x3c033fd3)
eeObj.WriteMem32(0x00187fd0,0x34643333)

eeObj.WriteMem32(0x001880dc,0x3c033ec0)
end

emuObj.AddVsyncHook(widescreen)