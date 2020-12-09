apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Stunt GP (J)(SLPS-20152)
--comment=Widescreen hack by LRukyk (NTSC-J by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x005de5cc,0x3fe37119)
eeObj.WriteMem32(0x005de5c8,0x3fe37119)
end

emuObj.AddVsyncHook(widescreen)