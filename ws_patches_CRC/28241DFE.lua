apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00253c48,0x08123794)
eeObj.WriteMem32(0x0048de50,0x3c013f40)
eeObj.WriteMem32(0x0048de54,0x4481f000)
eeObj.WriteMem32(0x0048de58,0xc6010068)
eeObj.WriteMem32(0x0048de5c,0xc602006c)
eeObj.WriteMem32(0x0048de60,0x461e0843)
eeObj.WriteMem32(0x0048de64,0xe6010068)
eeObj.WriteMem32(0x0048de68,0x08094f14)

end

emuObj.AddVsyncHook(widescreen)