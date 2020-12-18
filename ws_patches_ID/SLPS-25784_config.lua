apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Another Century's Episode 3 - The Final (J)(SLPS-25784)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f023c 00008244
--eeObj.WriteMem32(0x0020f770,0x3c023f20)

--Y-Fov
--6e3f023c efee4334
--eeObj.WriteMem32(0x0020f5ec,0x3c023f9f)
--eeObj.WriteMem32(0x0020f5f0,0x344349e9)

--Render Fix
--eeObj.WriteMem32(0x0020f3fc,0x3c033e20)

eeObj.WriteMem32(0x0014dc90,0x3c0243d6)
eeObj.WriteMem32(0x0020f5dc,0x3c023f40)
eeObj.WriteMem32(0x0020F304,0x3C034099)
eeObj.WriteMem32(0x0020F308,0x34648666)
end

emuObj.AddVsyncHook(widescreen)