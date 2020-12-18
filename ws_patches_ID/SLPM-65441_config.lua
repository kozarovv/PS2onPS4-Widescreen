apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ashita no Joe - Masshiro ni Moe Tsukiro! (J)(SLPM-65441)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 00688244 f03e023c 
eeObj.WriteMem32(0x001cb688,0x3c023f40)

--zoom
--eeObj.WriteMem32(0x001a1418,0x3c053fd0)
end

emuObj.AddVsyncHook(widescreen)