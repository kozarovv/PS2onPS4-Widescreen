apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x002c15b8,0x3c013fcc)
eeObj.WriteMem32(0x002c15bc,0x3421ccc4)

--Zoom
eeObj.WriteMem32(0x002c159c,0x3c014456)

--Render fix
eeObj.WriteMem32(0x002b1254,0x3c014480)
end

emuObj.AddVsyncHook(widescreen)