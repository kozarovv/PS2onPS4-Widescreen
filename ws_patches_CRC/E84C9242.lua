apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Tekken Tag Tournament (Widescreen) NTSC-U
-- 16:9
eeObj.WriteMem32(0x0034afbc,0x3c013f40)
eeObj.WriteMem32(0x0034afc0,0x44810000)
eeObj.WriteMem32(0x0034afc8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)