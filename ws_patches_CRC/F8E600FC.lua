apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Heroes of the Pacific (E)(SLES-53441)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001bb788,0x080521d8)
eeObj.WriteMem32(0x001bb78c,0x00000000)

eeObj.WriteMem32(0x00148760,0x3c013f40)
eeObj.WriteMem32(0x00148764,0x4481f000)
eeObj.WriteMem32(0x00148768,0xc6010068)
eeObj.WriteMem32(0x0014876c,0xc602006c)
eeObj.WriteMem32(0x00148770,0x461e0843)
eeObj.WriteMem32(0x00148774,0xe6010068)
eeObj.WriteMem32(0x00148778,0x0806ede4)
end

emuObj.AddVsyncHook(widescreen)