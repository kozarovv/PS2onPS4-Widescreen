apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht (NTSC-K by Arapapa)

-- 16:9 (00000000(*) 00000000 43ad1346 00000000(*) 00000000(*))
eeObj.WriteMem32(0x00139fac,0x3c013f40)
eeObj.WriteMem32(0x00139fb8,0x44810000)
eeObj.WriteMem32(0x00139fbc,0x4600c602)

eeObj.WriteMem32(0x00172530,0x3c033f19)
eeObj.WriteMem32(0x00172538,0x3462999a)
eeObj.WriteMem32(0x001a8660,0x3c0243d6)
end

emuObj.AddVsyncHook(widescreen)