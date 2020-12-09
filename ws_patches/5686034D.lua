apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x00192a7c,0x3c013f40)
eeObj.WriteMem32(0x00192a88,0x4481f000)
eeObj.WriteMem32(0x00192cf4,0x461ea783)
eeObj.WriteMem32(0x00192d50,0x461e0083)

-- force progressive scan
--eeObj.WriteMem32(0x001a0bf4,0x3c050000)
--eeObj.WriteMem32(0x001a0bfc,0x3c060050)
--eeObj.WriteMem32(0x001a0c04,0x3c070001)
end

emuObj.AddVsyncHook(widescreen)