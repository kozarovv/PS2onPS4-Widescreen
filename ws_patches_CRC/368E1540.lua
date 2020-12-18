apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--a80020c6 003f023c 00088244 
eeObj.WriteMem32(0x00369a3c,0x3c023f21)

--Y-Fov
--43a81446 a00030c6 a40031c6
eeObj.WriteMem32(0x00369a7c,0x081259b4)

eeObj.WriteMem32(0x004966d0,0x4614a843)
eeObj.WriteMem32(0x004966d4,0x3c013f40)
eeObj.WriteMem32(0x004966d8,0x4481f000)
eeObj.WriteMem32(0x004966dc,0x461e0842)
eeObj.WriteMem32(0x004966e0,0x080da6a0)
end

emuObj.AddVsyncHook(widescreen)