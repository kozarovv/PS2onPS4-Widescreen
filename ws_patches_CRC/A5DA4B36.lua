apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Yakuza Fury (E)(SLES-53399)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x0013e48c,0x3c053f40)

--Zoom
eeObj.WriteMem32(0x0013e8f0,0x3c0443e4)
end

emuObj.AddVsyncHook(widescreen)