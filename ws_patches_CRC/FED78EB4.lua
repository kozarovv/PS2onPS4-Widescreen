apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jikkyou Powerful Pro Yakyuu 9 Ketteiban (J)(SLPM-62274)
--comment=Widescreen hack by Arapapa

--X-Fov 
eeObj.WriteMem32(0x002b6bfc,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)