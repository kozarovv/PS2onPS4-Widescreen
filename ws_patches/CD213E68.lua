apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sky Odyssey (NTSC-U)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00283488,0x3f400000)
eeObj.WriteMem32(0x0026C300,0x43d55555)
end

emuObj.AddVsyncHook(widescreen)