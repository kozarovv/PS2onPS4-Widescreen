apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jikkyou Powerful Pro Yakyuu 14 (J)(SLPM-66777)
--comment=Widescreen hack by Arapapa

--X-Fov 
eeObj.WriteMem32(0x003378dc,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)