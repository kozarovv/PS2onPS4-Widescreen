apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00191c20,0x3c0143f0)

--Zoom
--eeObj.WriteMem32(0x00191cb4,0x3c013ec0)

--Y-Fov
--eeObj.WriteMem32(0x00191c98,0x3c013eb4)
end

emuObj.AddVsyncHook(widescreen)