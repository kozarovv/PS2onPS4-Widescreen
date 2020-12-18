apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)
eeObj.WriteMem32(0x00140424,0x3c023fbd)
eeObj.WriteMem32(0x0014042c,0x3442a12e)
end

emuObj.AddVsyncHook(widescreen)