apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0020d484,0x08083f04)

eeObj.WriteMem32(0x0020fc10,0x46070202)
eeObj.WriteMem32(0x0020fc14,0x3c013f40)
eeObj.WriteMem32(0x0020fc18,0x00000000)
eeObj.WriteMem32(0x0020fc1c,0x4481f000)
eeObj.WriteMem32(0x0020fc20,0x461e4202)
eeObj.WriteMem32(0x0020fc24,0x08083522)
end

emuObj.AddVsyncHook(widescreen)