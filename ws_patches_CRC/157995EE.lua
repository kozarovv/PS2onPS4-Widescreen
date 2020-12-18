apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--380000c6 42000246 (1st)
eeObj.WriteMem32(0x0029c154,0x08041c28)
eeObj.WriteMem32(0x001070a0,0xc6000038)
eeObj.WriteMem32(0x001070a4,0x3c1b3f40)
eeObj.WriteMem32(0x001070a8,0x449bf000)
eeObj.WriteMem32(0x001070ac,0x461e0003)
eeObj.WriteMem32(0x001070b0,0x080a7056)
end

emuObj.AddVsyncHook(widescreen)