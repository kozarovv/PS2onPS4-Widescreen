apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Someone and Arapapa

--X-Fov
eeObj.WriteMem32(0x0082F300,0x3F400000)

--3D Cartoon Scene
eeObj.WriteMem32(0x002633f4,0x3c023f40)
eeObj.WriteMem32(0x00263444,0x3c023f40)
eeObj.WriteMem32(0x0026358c,0x3c023f40)
eeObj.WriteMem32(0x002636d4,0x3c023f40)
eeObj.WriteMem32(0x00264cb0,0x3c023f40)
eeObj.WriteMem32(0x00264cfc,0x3c023f40)
eeObj.WriteMem32(0x00264e3c,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)