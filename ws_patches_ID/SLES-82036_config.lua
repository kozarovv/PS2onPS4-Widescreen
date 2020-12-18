apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Armored Core - Nexus - Disc 1 - Evolution (PAL-M5) (SLES-82036)
--gametitle=Armored Core - Nexus - Disc 2 - Revolution (PAL-M5) (SLES-82037)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0024070c,0x3c013f40)
eeObj.WriteMem32(0x00240718,0x44810000)
eeObj.WriteMem32(0x0024071c,0x4600c602)
eeObj.WriteMem32(0x001211d0,0x3c033f19)
eeObj.WriteMem32(0x001211d8,0x3462999a)
eeObj.WriteMem32(0x00158880,0x3c0243d6)

-- 16:10
--eeObj.WriteMem32(0x0024070c,0x3c013f55)
--eeObj.WriteMem32(0x00240710,0x34215555)
--eeObj.WriteMem32(0x00240718,0x44810000)
--eeObj.WriteMem32(0x0024071c,0x4600c602)
--eeObj.WriteMem32(0x001211d0,0x3c033f2a)
--eeObj.WriteMem32(0x001211d8,0x3462aaab)
--eeObj.WriteMem32(0x00158880,0x3c0243c1)
end

emuObj.AddVsyncHook(widescreen)