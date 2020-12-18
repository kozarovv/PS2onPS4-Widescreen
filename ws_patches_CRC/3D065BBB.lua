apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
--(aa3f013c aaaa2134) first... find address from top (00000000)
eeObj.WriteMem32(0x00179e30,0x3c013fe3)
eeObj.WriteMem32(0x00179e34,0x34218e39)

--(aa3f013c aaaa2134) tenth... find address from top (00000000)
eeObj.WriteMem32(0x0019e9a8,0x3c013fe3)
eeObj.WriteMem32(0x0019e9ac,0x34218e39)

-- 16:10
--eeObj.WriteMem32(0x00179e30,0x3c013fcc)
--eeObj.WriteMem32(0x00179e34,0x3421cccd)
--eeObj.WriteMem32(0x0019e9a8,0x3c013fcc)
--eeObj.WriteMem32(0x0019e9ac,0x3421cccd)
end

emuObj.AddVsyncHook(widescreen)