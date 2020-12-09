apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Backyard Wrestling - Don't Try This at Home (PAL)(SLES-51966)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x002c20e0,0x3c013fcc)
eeObj.WriteMem32(0x002c20e4,0x3421ccc4)

--Zoom
eeObj.WriteMem32(0x002c20c4,0x3c014456)

--Render fix
eeObj.WriteMem32(0x002b1b8c,0x3c014480)
end

emuObj.AddVsyncHook(widescreen)