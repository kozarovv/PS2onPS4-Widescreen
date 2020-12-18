apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=G-Saviour (J)(SLPS-25009)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00116824,0x3c013f40)

--Render Fix
eeObj.WriteMem32(0x00116868,0x3c0143e0)
end

emuObj.AddVsyncHook(widescreen)