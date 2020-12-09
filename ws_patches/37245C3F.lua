apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by PsxFan107
eeObj.WriteMem32(0x00148FD0,0x3C0C3FAA)
eeObj.WriteMem32(0x00148FD8,0x358CAAAB)
end

emuObj.AddVsyncHook(widescreen)