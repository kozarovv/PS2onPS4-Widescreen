apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--Wide hack 16:9
eeObj.WriteMem32(0x00135064,0x3c023ff3)
eeObj.WriteMem32(0x0013506c,0x3442cf35)
end

emuObj.AddVsyncHook(widescreen)