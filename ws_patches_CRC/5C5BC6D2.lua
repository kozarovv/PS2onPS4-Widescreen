apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

--X-Fov
--02631646 540014c6
eeObj.WriteMem32(0x002e9f44,0x080e79e4)

eeObj.WriteMem32(0x0039e790,0x46166302)
eeObj.WriteMem32(0x0039e794,0x3c013fa3)
eeObj.WriteMem32(0x0039e798,0x4481f000)
eeObj.WriteMem32(0x0039e79C,0x461e6302)
eeObj.WriteMem32(0x0039e7A0,0x080ba7d2)
end

emuObj.AddVsyncHook(widescreen)