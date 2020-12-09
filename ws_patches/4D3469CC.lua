apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x004be6d0,0x0810a95c)
eeObj.WriteMem32(0x0042a570,0x3c013f40)
eeObj.WriteMem32(0x0042a574,0x4481f000)
eeObj.WriteMem32(0x0042a578,0xc6010068)
eeObj.WriteMem32(0x0042a57c,0xc602006c)
eeObj.WriteMem32(0x0042a580,0x461e0843)
eeObj.WriteMem32(0x0042a584,0xe6010068)
eeObj.WriteMem32(0x0042a588,0x0812f9b6)
end

emuObj.AddVsyncHook(widescreen)