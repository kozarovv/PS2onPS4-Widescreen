apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by flameofrecca
eeObj.WriteMem32(0x00b9e100,0x3f400000)
eeObj.WriteMem32(0x0086f71c,0x3f400000)

--un--comment for 16:10
--eeObj.WriteMem32(0x00b9e114,0x3f666666)
--eeObj.WriteMem32(0x0086f728,0x3f666666)
end

emuObj.AddVsyncHook(widescreen)