apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jikkyou Powerful Pro Yakyuu 14 Chou Ketteiban (J)(SLPM-66916)
--comment=Widescreen hack by Arapapa

--X-Fov 
eeObj.WriteMem32(0x0033fa64,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)