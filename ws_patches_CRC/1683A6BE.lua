apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9)
-- 16:9
eeObj.WriteMem32(0x00328864,0x3FC6E2B5)
eeObj.WriteMem32(0x00328c04,0x3FC6E2B5)

--Optional shadow alpha hack
----comment=Shadow Override (Krisan Thyme)
--eeObj.WriteMem32(0x00330B00,0x00000000)
--eeObj.WriteMem32(0x00330B04,0x00000000)
--eeObj.WriteMem32(0x00330B08,0x00000000)
--eeObj.WriteMem32(0x00330B0C,0x00000000)
--eeObj.WriteMem32(0x00330B10,0x00000000)
--eeObj.WriteMem32(0x00330B14,0x00000000)
--eeObj.WriteMem32(0x00330B18,0x00000000)
--eeObj.WriteMem32(0x00330B1C,0x00000000)
--eeObj.WriteMem32(0x00330B20,0x00000000)
--eeObj.WriteMem32(0x00330B24,0x00000000)
--eeObj.WriteMem32(0x00330B28,0x00000000)
--eeObj.WriteMem32(0x00330B2C,0x00000000)
--eeObj.WriteMem32(0x00330B30,0x00000000)
--eeObj.WriteMem32(0x00330B34,0x00000000)
--eeObj.WriteMem32(0x00330B38,0x00000000)
--eeObj.WriteMem32(0x00330B3C,0x00000000)
--eeObj.WriteMem32(0x00330B40,0x00000000)
--eeObj.WriteMem32(0x00330B44,0x00000000)
--eeObj.WriteMem32(0x00330B48,0x00000000)
--eeObj.WriteMem32(0x00330B4C,0x00000000)
--eeObj.WriteMem32(0x00330B50,0x00000000)
--eeObj.WriteMem32(0x00330B54,0x00000000)
--eeObj.WriteMem32(0x00330B58,0x00000000)
--eeObj.WriteMem32(0x00330B5C,0x00000000)
--eeObj.WriteMem32(0x00330B60,0x00000000)
--eeObj.WriteMem32(0x00330B64,0x00000000)
--eeObj.WriteMem32(0x00330B68,0x00000000)
--eeObj.WriteMem32(0x00330B6C,0x00000000)
--eeObj.WriteMem32(0x00330B70,0x00000000)
--eeObj.WriteMem32(0x00330B74,0x00000000)
--eeObj.WriteMem32(0x00330B78,0x00000000)
--eeObj.WriteMem32(0x00330B7C,0x00000000)
end

emuObj.AddVsyncHook(widescreen)