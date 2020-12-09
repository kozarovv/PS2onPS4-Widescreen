apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=dot Hack - Part 4 - Quarantine - Widescreen Hack (16:9) (NTSC-U) (pavachan)
eeObj.WriteMem32(0x00971C40,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)