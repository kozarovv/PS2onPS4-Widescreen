apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Backyard Wrestling - Don't Try This at Home (J)(SLPS-25341)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x002c3750,0x3c013fcc)
eeObj.WriteMem32(0x002c3754,0x3421ccc4)

--Zoom (need render fix)
eeObj.WriteMem32(0x002c3734,0x3c014456)
--eeObj.WriteMem32(0x002c3144,0x3c013fab)

--Gameplay Zoom (except event, needless render fix) 
--eeObj.WriteMem32(0x002c36b8,0x3c014387)

--Render Fix
--1644013c 00608144 a000043c
eeObj.WriteMem32(0x002b3204,0x3c014480)
end

emuObj.AddVsyncHook(widescreen)