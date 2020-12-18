apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

--X-Fov
--02631646 540014c6
eeObj.WriteMem32(0x002e860c,0x080e7748)

eeObj.WriteMem32(0x0039dd20,0x46166302)
eeObj.WriteMem32(0x0039dd24,0x3c013fa3)
eeObj.WriteMem32(0x0039dd28,0x4481f000)
eeObj.WriteMem32(0x0039dd2c,0x461e6302)
eeObj.WriteMem32(0x0039dd30,0x080ba184)
end

emuObj.AddVsyncHook(widescreen)