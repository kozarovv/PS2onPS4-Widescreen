apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core - Nine Breaker (PAL-E) (SLES-53819)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00139fac,0x3c013f40)
eeObj.WriteMem32(0x00139fb8,0x44810000)
eeObj.WriteMem32(0x00139fbc,0x4600c602)
eeObj.WriteMem32(0x00172570,0x3c033f19)
eeObj.WriteMem32(0x00172578,0x3462999a)
eeObj.WriteMem32(0x001a8760,0x3c0243d6)

-- 16:10
--eeObj.WriteMem32(0x00139fac,0x3c013f55)
--eeObj.WriteMem32(0x00139fb0,0x34215555)
--eeObj.WriteMem32(0x00139fb8,0x44810000)
--eeObj.WriteMem32(0x00139fbc,0x4600c602)
--eeObj.WriteMem32(0x00172570,0x3c033f2a)
--eeObj.WriteMem32(0x00172578,0x3462aaab)
--eeObj.WriteMem32(0x001a8760,0x3c0243c1)
end

emuObj.AddVsyncHook(widescreen)