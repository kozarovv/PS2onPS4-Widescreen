apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Colosseum - Road to Freedom (NTSC-U)
--comment=Widescreen Hack
eeObj.WriteMem32(0x00473258,0x3C013F40)
eeObj.WriteMem32(0x004731d4,0x3C013EC3)
end

emuObj.AddVsyncHook(widescreen)