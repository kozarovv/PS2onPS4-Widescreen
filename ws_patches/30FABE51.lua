apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by dieSkaarj.
--comment=Aiming still in 4:3

eeObj.WriteMem32(0x00298818,0x3c013f40)


end

emuObj.AddVsyncHook(widescreen)