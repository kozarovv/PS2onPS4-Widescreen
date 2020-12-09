apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00131ba8,0x080c9a54)
eeObj.WriteMem32(0x00131bac,0x00000000)

eeObj.WriteMem32(0x00326950,0x3c013f40)
eeObj.WriteMem32(0x00326954,0x4481f000)
eeObj.WriteMem32(0x00326958,0x46000803)
eeObj.WriteMem32(0x0032695c,0x461e0002)
eeObj.WriteMem32(0x00326960,0xe78087c4)
eeObj.WriteMem32(0x00326964,0x0804c6eb)
end

emuObj.AddVsyncHook(widescreen)