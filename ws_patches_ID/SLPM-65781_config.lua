apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kessen III (J)(SLPM-65781)
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00168498,0x3c023f40)
eeObj.WriteMem32(0x0039bf68,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)