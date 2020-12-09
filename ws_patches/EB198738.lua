apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Lord of the Rings - The Third Age (NTSC-U)
--comment=Widescreen Hack (NTSC-U by Arapapa)

eeObj.WriteMem32(0x00C37580,0x3f400000)
eeObj.WriteMem32(0x00C37590,0x3fb00000)
eeObj.WriteMem32(0x00C37598,0x3fb00000)
end

emuObj.AddVsyncHook(widescreen)