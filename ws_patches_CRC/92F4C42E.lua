apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jikkyou Powerful Pro Yakyuu 11 (J)(SLPM-65630)
--comment=Widescreen hack by Arapapa

--X-Fov 
eeObj.WriteMem32(0x002efe0c,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)