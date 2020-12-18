apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002c9fc0,0x080d0410)
eeObj.WriteMem32(0x00341040,0x3c013f40)
eeObj.WriteMem32(0x00341044,0x4481f000)
eeObj.WriteMem32(0x00341048,0xc6010068)
eeObj.WriteMem32(0x0034104c,0xc602006c)
eeObj.WriteMem32(0x00341050,0x461e0843)
eeObj.WriteMem32(0x00341054,0xe6010068)
eeObj.WriteMem32(0x00341058,0x080b27f2)
end

emuObj.AddVsyncHook(widescreen)