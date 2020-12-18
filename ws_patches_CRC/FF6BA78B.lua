apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kinniku Banzuke - Muscle Wars 21 (J)(SLPM-65048)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x003c5c94,0x081083f4)
eeObj.WriteMem32(0x003c5c98,0x00000000)

eeObj.WriteMem32(0x00420fd0,0x3c013f40)
eeObj.WriteMem32(0x00420fd4,0x4481f000)
eeObj.WriteMem32(0x00420fd8,0xc6010068)
eeObj.WriteMem32(0x00420fdc,0xc602006c)
eeObj.WriteMem32(0x00420fe0,0x461e0843)
eeObj.WriteMem32(0x00420fe4,0xe6010068)
eeObj.WriteMem32(0x00420fe8,0x080f1727)
end

emuObj.AddVsyncHook(widescreen)