apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00186b84,0x3c013f40)

--Y-Fov
eeObj.WriteMem32(0x004d1c94,0x3c013fb6)
eeObj.WriteMem32(0x004d1c98,0x34219cfe)

--Render fix
eeObj.WriteMem32(0x00488144,0x3c013f40)
eeObj.WriteMem32(0x00577430,0x3c013f80)
end

emuObj.AddVsyncHook(widescreen)