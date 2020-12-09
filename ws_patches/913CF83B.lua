apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nichibeikan Pro Yakyuu - Final League (J)(SLPS-25101)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00124c64,0x0806948c)
eeObj.WriteMem32(0x001a5230,0x46001003)
eeObj.WriteMem32(0x001a5234,0x3c123f40)
eeObj.WriteMem32(0x001a5238,0x4492f000)
eeObj.WriteMem32(0x001a523c,0x461e0002)
eeObj.WriteMem32(0x001a5240,0x0804931a)

--Render fix
eeObj.WriteMem32(0x0013e618,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)