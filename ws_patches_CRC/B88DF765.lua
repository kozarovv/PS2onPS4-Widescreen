apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Winback - Covert Operations (NTSC-U)
--comment=Widescreen hack

-- 16:9
eeObj.WriteMem32(0x00246cb8,0x3c013f40)
eeObj.WriteMem32(0x00246cbc,0x4481f000)
eeObj.WriteMem32(0x00246ccc,0x461eb583)
eeObj.WriteMem32(0x001c63a8,0x461e0002)
eeObj.WriteMem32(0x001c68c4,0x461ea302)
end

emuObj.AddVsyncHook(widescreen)