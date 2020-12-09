apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--0c000396 58000fc6 (2nd)
eeObj.WriteMem32(0x0019d198,0x08088ab4)

eeObj.WriteMem32(0x00222ad0,0xc60f0058)
eeObj.WriteMem32(0x00222ad4,0x3c013f40)
eeObj.WriteMem32(0x00222ad8,0x4481f000)
eeObj.WriteMem32(0x00222adc,0x461e7bc2)
eeObj.WriteMem32(0x00222ae0,0x08067467)
end

emuObj.AddVsyncHook(widescreen)