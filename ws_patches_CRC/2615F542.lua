apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen
--widescreen 16:9 hack by 99skull, thanks to miseru99
eeObj.WriteMem32(0x003D1A18,0x3F19999A)
eeObj.WriteMem32(0x0017BE54,0x3C023F19)
eeObj.WriteMem32(0x0017BE5C,0x3443999A)
eeObj.WriteMem32(0x001BCDB8,0x3C033F19)
eeObj.WriteMem32(0x001BCDC0,0x3463999A)
eeObj.WriteMem32(0x001BCE9C,0x3C033F19)
eeObj.WriteMem32(0x001BCEA4,0x3463999A)
end

emuObj.AddVsyncHook(widescreen)