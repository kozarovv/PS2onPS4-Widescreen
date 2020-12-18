apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9 battles
--00000000 00000000 43ad1346 00000000 00000000
--403f013c 00002134 43ad1346 00008144 02c60046
eeObj.WriteMem32(0x00703bfc,0x3c013f40)
eeObj.WriteMem32(0x00703c00,0x34210000)
eeObj.WriteMem32(0x00703c08,0x44810000)
eeObj.WriteMem32(0x00703c0c,0x4600c602)

eeObj.WriteMem32(0x007cb674,0x3c0243ab)
end

emuObj.AddVsyncHook(widescreen)