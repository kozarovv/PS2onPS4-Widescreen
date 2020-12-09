apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00282238,0x0811e324)
eeObj.WriteMem32(0x0028223c,0x00000000)

eeObj.WriteMem32(0x00478c90,0x3c013f40)
eeObj.WriteMem32(0x00478c94,0x4481f000)
eeObj.WriteMem32(0x00478c98,0xc6010068)
eeObj.WriteMem32(0x00478c9c,0xc602006c)
eeObj.WriteMem32(0x00478ca0,0x461e0843)
eeObj.WriteMem32(0x00478ca4,0xe6010068)
eeObj.WriteMem32(0x00478ca8,0x080a088f)
end

emuObj.AddVsyncHook(widescreen)