apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kuusen 2 (J)(SLPM-62413)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002a36e0,0x08045704)
eeObj.WriteMem32(0x002a36e4,0x00000000)

eeObj.WriteMem32(0x00115c10,0x3c013f40)
eeObj.WriteMem32(0x00115c14,0x4481f000)
eeObj.WriteMem32(0x00115c18,0xc6010068)
eeObj.WriteMem32(0x00115c1c,0xc602006c)
eeObj.WriteMem32(0x00115c20,0x461e0843)
eeObj.WriteMem32(0x00115c24,0xe6010068)
eeObj.WriteMem32(0x00115c28,0x080a8dba)
end

emuObj.AddVsyncHook(widescreen)