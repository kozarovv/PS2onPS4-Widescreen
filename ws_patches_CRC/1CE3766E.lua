apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001b2558,0x080890c4)
eeObj.WriteMem32(0x001b255c,0x00000000)

eeObj.WriteMem32(0x00224310,0x3c013f40)
eeObj.WriteMem32(0x00224314,0x4481f000)
eeObj.WriteMem32(0x00224318,0xc6010068)
eeObj.WriteMem32(0x0022431c,0xc602006c)
eeObj.WriteMem32(0x00224320,0x461e0843)
eeObj.WriteMem32(0x00224324,0xe6010068)
eeObj.WriteMem32(0x00224328,0x0806c958)
end

emuObj.AddVsyncHook(widescreen)