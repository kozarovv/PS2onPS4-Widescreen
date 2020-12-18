apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Punisher (NTSC-U)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0042d2d0,0x3fdba5e3)
eeObj.WriteMem32(0x00192404,0x3c023f20)
eeObj.WriteMem32(0x0019240c,0x34426666)

-- force progressive scan
eeObj.WriteMem32(0x001a0204,0x3c050000)
eeObj.WriteMem32(0x001a0208,0x3c060050)
eeObj.WriteMem32(0x001a020c,0x3c070001)
eeObj.WriteMem32(0x001a0210,0x3c090010)
end

emuObj.AddVsyncHook(widescreen)