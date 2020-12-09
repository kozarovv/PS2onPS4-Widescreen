apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen 16:9

--Zoom
--003f023c 988a22c4 (2nd)
eeObj.WriteMem32(0x002e880c,0x3c023f20)

--Y-Fov
--03080046 ec00a0e6
eeObj.WriteMem32(0x002e8840,0x08164fa8)
eeObj.WriteMem32(0x00593ea0,0x46000803)
eeObj.WriteMem32(0x00593ea4,0x3c013f40)
eeObj.WriteMem32(0x00593ea8,0x4481f000)
eeObj.WriteMem32(0x00593eac,0x461e0002)
eeObj.WriteMem32(0x00593eb0,0x080ba211)
end

emuObj.AddVsyncHook(widescreen)