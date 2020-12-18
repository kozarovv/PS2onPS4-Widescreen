apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kurogane no Houkou 2 - Warship Commander (J)(SLPM-65458)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--46ab0046 2041013c
eeObj.WriteMem32(0x00144e90,0x080cf494)

eeObj.WriteMem32(0x0033d250,0x4600ab46)
eeObj.WriteMem32(0x0033d254,0x3c013f40)
eeObj.WriteMem32(0x0033d258,0x4481f000)
eeObj.WriteMem32(0x0033d25c,0x461e6b42)
eeObj.WriteMem32(0x0033d260,0x080513a5)

--Render fix
--003f013c 00308144 0c0063c4
eeObj.WriteMem32(0x00144c80,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)