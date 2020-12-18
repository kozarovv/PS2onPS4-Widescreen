apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Iron Aces 2 - Birds of Prey (E)(SLES-50686)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001dd220,0x08042f48)
eeObj.WriteMem32(0x001dd224,0x00000000)

eeObj.WriteMem32(0x0010bd20,0x3c013f40)
eeObj.WriteMem32(0x0010bd24,0x4481f000)
eeObj.WriteMem32(0x0010bd28,0xc6010068)
eeObj.WriteMem32(0x0010bd2c,0xc602006c)
eeObj.WriteMem32(0x0010bd30,0x461e0843)
eeObj.WriteMem32(0x0010bd34,0xe6010068)
eeObj.WriteMem32(0x0010bd38,0x0807748a)
end

emuObj.AddVsyncHook(widescreen)