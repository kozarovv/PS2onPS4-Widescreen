apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=dot Hack - Part 3 - Outbreak - Widescreen Hack (16:9) (NTSC-U) (pavachan)
eeObj.WriteMem32(0x00A750C0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)