apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Terminator 3 - Rise of the Machines (J)(SLPM-65442)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--46a30046 c6c30046 06bc0046
eeObj.WriteMem32(0x0026d0f0,0x080cb358)
eeObj.WriteMem32(0x0032cd60,0x4600a346)
eeObj.WriteMem32(0x0032cd64,0x3c013f40)
eeObj.WriteMem32(0x0032cd68,0x4481f000)
eeObj.WriteMem32(0x0032cd6c,0x461e6b42)
eeObj.WriteMem32(0x0032cd70,0x0809b43d)

--Target Focus (X-Fov)
--000084e4 280080ac
eeObj.WriteMem32(0x00286b4c,0x080cb348)
eeObj.WriteMem32(0x0032cd20,0x3c013f40)
eeObj.WriteMem32(0x0032cd24,0x4481f000)
eeObj.WriteMem32(0x0032cd28,0x461e2102)
eeObj.WriteMem32(0x0032cd2c,0xe4840000)
eeObj.WriteMem32(0x0032cd30,0x080a1ad4)


end

emuObj.AddVsyncHook(widescreen)