apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ghost Vibration SLES_514.33
--comment=Widescreen Hack
eeObj.WriteMem32(0x001F26F0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)