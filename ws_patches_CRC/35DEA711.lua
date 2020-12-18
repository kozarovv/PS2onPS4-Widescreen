apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)
--comment=Font fix by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0011cbc4,0x3c023f40)
eeObj.WriteMem32(0x0012f09c,0x3c033f40)
eeObj.WriteMem32(0x00144aa8,0x3c053f40)
eeObj.WriteMem32(0x00144b24,0x3c033f40)
eeObj.WriteMem32(0x00144b74,0x3c023f40)

--render fix
eeObj.WriteMem32(0x0013e380,0x3c023f2b)

--Font fix
--003d053c 0042033c
--003d053c c041033c
eeObj.WriteMem32(0x0010eb34,0x3c0341c0)
--eeObj.WriteMem32(0x0010eb40,0x3c054140)
end

emuObj.AddVsyncHook(widescreen)