apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 ), ported to PAL by ShaolinAssassin
eeObj.WriteMem32(0x002348a0,0x46000406)
end

emuObj.AddVsyncHook(widescreen)