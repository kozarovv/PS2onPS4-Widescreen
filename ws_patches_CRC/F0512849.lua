apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Horsez (U)(SLUS-21563)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x0032ca6c,0x3c023f00)

--Zoom
eeObj.WriteMem32(0x0032ca78,0x3c023fc0)

--Hud Fix
eeObj.WriteMem32(0x00222c1c,0x08040718)

eeObj.WriteMem32(0x00101c60,0x46010303)
eeObj.WriteMem32(0x00101c64,0x3c013faa)
eeObj.WriteMem32(0x00101c68,0x3421aaab)
eeObj.WriteMem32(0x00101c6c,0x4481f000)
eeObj.WriteMem32(0x00101c70,0x461e6302)
eeObj.WriteMem32(0x00101c74,0x08088b08)
end

emuObj.AddVsyncHook(widescreen)