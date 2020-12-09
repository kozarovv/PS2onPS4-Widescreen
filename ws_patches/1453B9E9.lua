apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Gameplay 16:9

eeObj.WriteMem32(0x001580a8,0x3c013f40)
eeObj.WriteMem32(0x00158130,0x3c0143e0)
eeObj.WriteMem32(0x001a8b00,0x3c013f40)
eeObj.WriteMem32(0x001a8b18,0x3c0143e0)

--803f013c 00a08144 f000a426
--a043013c 00888144 c66c0046 3rd
--803f013c 00108144 d0ffbd27
--a043013c 00888144 46130046
end

emuObj.AddVsyncHook(widescreen)