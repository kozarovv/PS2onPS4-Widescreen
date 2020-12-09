apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002a0b44,0x3F23645A)
eeObj.WriteMem32(0x002a0b58,0x3EFD70A4)
eeObj.WriteMem32(0x002a0b6c,0x3F0BC6A8)
eeObj.WriteMem32(0x002a0b80,0x3F1624DD)

--Y-Fov
eeObj.WriteMem32(0x003da410,0x3F9F49E9)
eeObj.WriteMem32(0x003da414,0x3F9F49E9)
end

emuObj.AddVsyncHook(widescreen)