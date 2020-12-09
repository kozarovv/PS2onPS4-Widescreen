apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ford Mustang - The Legend Lives (U)(LUS-21162)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--800040c6 003f013c 00608144
eeObj.WriteMem32(0x00135b78,0x3c013f1d)


--Y-Fov
--82310446 0400aac4
eeObj.WriteMem32(0x00135c08,0x080d7818)

eeObj.WriteMem32(0x0035e060,0x46043182)
eeObj.WriteMem32(0x0035e064,0x3c013faa)
eeObj.WriteMem32(0x0035e068,0x3421aaab)
eeObj.WriteMem32(0x0035e06c,0x4481f000)
eeObj.WriteMem32(0x0035e070,0x461e3182)
eeObj.WriteMem32(0x0035e074,0x0804d703)
end

emuObj.AddVsyncHook(widescreen)