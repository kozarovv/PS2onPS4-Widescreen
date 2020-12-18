apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ultraman (J)(SLPS-25364)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002681dc,0x3c01bec0)

--Y-Fov
--00000000 00000000 03a81446 00000000
--ab3f013c 00008144 02a50046 03a81446
eeObj.WriteMem32(0x001dbd40,0x3C013Fab)
eeObj.WriteMem32(0x001dbd44,0x44810000)
eeObj.WriteMem32(0x001dbd48,0x4600a502)
eeObj.WriteMem32(0x001dbd4c,0x4614a803)
end

emuObj.AddVsyncHook(widescreen)