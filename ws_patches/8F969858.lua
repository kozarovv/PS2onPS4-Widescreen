apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mission Impossible - Operation Surma SLES_520.01
--comment=Widescreen hack
eeObj.WriteMem32(0x006580e0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)