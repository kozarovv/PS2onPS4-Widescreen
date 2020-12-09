apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x003E559C,0x3F19999A)
eeObj.WriteMem32(0x003F57CC,0x43D55555)
end

emuObj.AddVsyncHook(widescreen)