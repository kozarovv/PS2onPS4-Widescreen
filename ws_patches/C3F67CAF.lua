apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shining Force EXA SLUS_215.67
--comment=Widescreen Hack
eeObj.WriteMem32(0x001abbd8,0x3c033ff3)
eeObj.WriteMem32(0x001abbe0,0x3463cf35)
eeObj.WriteMem32(0x002b9560,0x3c02401c)
end

emuObj.AddVsyncHook(widescreen)