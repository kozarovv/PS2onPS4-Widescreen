apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--02030c46 003f013c 00608144 
--02030c46 d03e013c 00608144 
eeObj.WriteMem32(0x002381c4,0x3c013ed0)

--Zoom
--003f013c 00b08144 58010cc6
eeObj.WriteMem32(0x00238320,0x3c013f20)
end

emuObj.AddVsyncHook(widescreen)