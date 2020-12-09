apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--03a50046 d405d6c4
eeObj.WriteMem32(0x00105070,0x08080644)

eeObj.WriteMem32(0x00201910,0x4600a503)
eeObj.WriteMem32(0x00201914,0x3c013faa)
eeObj.WriteMem32(0x00201918,0x3421aaab)
eeObj.WriteMem32(0x0020191c,0x4481f000)
eeObj.WriteMem32(0x00201920,0x461ea502)
eeObj.WriteMem32(0x00201924,0x0804141d)
end

emuObj.AddVsyncHook(widescreen)