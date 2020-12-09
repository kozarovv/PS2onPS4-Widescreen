apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 00608244 040001c6 (1st)
eeObj.WriteMem32(0x001937d8,0x3c023fab)

--Cutscenes
--02080046 4800a0e7 380080c4
eeObj.WriteMem32(0x0013b3d4,0x080af648)
eeObj.WriteMem32(0x002bd920,0x46000802)
eeObj.WriteMem32(0x002bd924,0x3c013f40)
eeObj.WriteMem32(0x002bd928,0x4481f000)
eeObj.WriteMem32(0x002bd92c,0x461e0003)
eeObj.WriteMem32(0x002bd930,0x0804ecf6)

------------------------------------/
--Event Zoom
--003f023c 3000bfff
--eeObj.WriteMem32(0x0013b3a4,0x3c023f2a)

end

emuObj.AddVsyncHook(widescreen)