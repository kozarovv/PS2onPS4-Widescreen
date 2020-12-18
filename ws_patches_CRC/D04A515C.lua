apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jikkyou Powerful Pro Yakyuu 10 (J)(SLPM-65317)
--comment=Widescreen hack by Arapapa

--X-Fov 
eeObj.WriteMem32(0x002ed8e4,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)