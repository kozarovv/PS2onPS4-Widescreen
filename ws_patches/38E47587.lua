apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0034a170,0x08040034)
eeObj.WriteMem32(0x0034a174,0x00000000)

eeObj.WriteMem32(0x001000d0,0x3c013f40)
eeObj.WriteMem32(0x001000d4,0x4481f000)
eeObj.WriteMem32(0x001000d8,0xc6010068)
eeObj.WriteMem32(0x001000dc,0xc602006c)
eeObj.WriteMem32(0x001000e0,0x461e0843)
eeObj.WriteMem32(0x001000e4,0xe6010068)
eeObj.WriteMem32(0x001000e8,0x080d285e)
end

emuObj.AddVsyncHook(widescreen)