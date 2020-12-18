apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mahou no Pumpkin (J)(SLPS-20280)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 1000bfff 00188244
eeObj.WriteMem32(0x002bf9a4,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)