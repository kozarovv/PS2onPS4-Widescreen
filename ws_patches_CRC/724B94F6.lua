apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00224500,0x3c013ec0)

--Y-Fov
eeObj.WriteMem32(0x00224454,0x3c013faa)
eeObj.WriteMem32(0x00224458,0x3421aaab)
eeObj.WriteMem32(0x00224464,0x4481f000)
eeObj.WriteMem32(0x00224468,0x461e18c2)
end

emuObj.AddVsyncHook(widescreen)