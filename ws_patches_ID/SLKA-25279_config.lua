apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hello Kitty - Mission Rescue (K)(SLKA-25279)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9


--Zoom
eeObj.WriteMem32(0x00100770,0x3c013F2A)

--Y-Fov
eeObj.WriteMem32(0x00100778,0x3c013fe3)
eeObj.WriteMem32(0x0010077c,0x34218E2A)

--003f013c 00608144 aa3f013c abaa2134 -> 2a3f013c 00608144 e33f013c 2a8e2134

end

emuObj.AddVsyncHook(widescreen)