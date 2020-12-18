apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dragon Rage (PAL-E) SLES_506.30
--comment=Widescreen hack by dieSkaarj

eeObj.WriteMem32(0x0029ef5e,0x00003fab)

end

emuObj.AddVsyncHook(widescreen)