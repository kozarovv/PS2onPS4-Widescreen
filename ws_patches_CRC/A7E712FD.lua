apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Red Faction (PAL-F) (SLES-50278)
--comment=Widescreen hack by Bigdemon

-- 16:9
eeObj.WriteMem32(0x002075d4,0x3c013f40)
eeObj.WriteMem32(0x002075e0,0x4481f000)
eeObj.WriteMem32(0x002076f0,0x461ea502)
eeObj.WriteMem32(0x002076f8,0x461ead43)
eeObj.WriteMem32(0x0023a8f4,0x3c024309)
eeObj.WriteMem32(0x0023a7fc,0x461e0303)
end

emuObj.AddVsyncHook(widescreen)