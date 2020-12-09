apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=J-League Winning Eleven 6 (J)(SLPM-62217)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x015b8bd8,0x08553e84)
eeObj.WriteMem32(0x015b8bdc,0x00000000)

eeObj.WriteMem32(0x0154fa10,0x3c013f40)
eeObj.WriteMem32(0x0154fa14,0x4481f000)
eeObj.WriteMem32(0x0154fa18,0xc6010068)
eeObj.WriteMem32(0x0154fa1c,0xc602006c)
eeObj.WriteMem32(0x0154fa20,0x461e0843)
eeObj.WriteMem32(0x0154fa24,0xe6010068)
eeObj.WriteMem32(0x0154fa28,0x0856e2f8)
end

emuObj.AddVsyncHook(widescreen)