apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Monster Hunter (J) (SLPM-65495)
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--Wide hack 16:9
eeObj.WriteMem32(0x00169d24,0x3c023ff3)
eeObj.WriteMem32(0x00169d2c,0x3442cf35)
end

emuObj.AddVsyncHook(widescreen)