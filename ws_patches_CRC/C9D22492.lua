apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jikkyou Powerful Pro Yakyuu 13 Chou Ketteiban (J)(SLPM-66590)
--comment=Widescreen hack by Arapapa

--X-Fov 
eeObj.WriteMem32(0x00326e2c,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)