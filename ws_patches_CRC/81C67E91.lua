apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Rumble Roses (PAL-M5) (SLES-52535) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00104084,0x3c013f40)
eeObj.WriteMem32(0x00104088,0x44810000)
eeObj.WriteMem32(0x00104090,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)