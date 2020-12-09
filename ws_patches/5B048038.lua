apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0016bb18,0x08047790)

eeObj.WriteMem32(0x0011de40,0x3c013f40)
eeObj.WriteMem32(0x0011de44,0x4481f000)
eeObj.WriteMem32(0x0011de48,0xc6010068)
eeObj.WriteMem32(0x0011de4c,0xc602006c)
eeObj.WriteMem32(0x0011de50,0x461e0843)
eeObj.WriteMem32(0x0011de54,0xe6010068)
eeObj.WriteMem32(0x0011de58,0x0805aec8)
end

emuObj.AddVsyncHook(widescreen)