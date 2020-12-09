apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov #1
eeObj.WriteMem32(0x00137ffc,0x0807e208)

eeObj.WriteMem32(0x001f8820,0x46036042)
eeObj.WriteMem32(0x001f8824,0x3c013faa)
eeObj.WriteMem32(0x001f8828,0x3421aaab)
eeObj.WriteMem32(0x001f882c,0x4481f000)
eeObj.WriteMem32(0x001f8830,0x461e0842)
eeObj.WriteMem32(0x001f8834,0x0804e000)

--X-Fov #2
eeObj.WriteMem32(0x00138194,0x0807e20f)

eeObj.WriteMem32(0x001f883c,0x46046042)
eeObj.WriteMem32(0x001f8840,0x3c013faa)
eeObj.WriteMem32(0x001f8844,0x3421aaab)
eeObj.WriteMem32(0x001f8848,0x4481f000)
eeObj.WriteMem32(0x001f884c,0x461e0842)
eeObj.WriteMem32(0x001f8850,0x0804e066)
end

emuObj.AddVsyncHook(widescreen)