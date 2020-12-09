apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack. Port by dieSkaarj (PAL.)

eeObj.WriteMem32(0x001047c8,0x3c013fab)

end

emuObj.AddVsyncHook(widescreen)