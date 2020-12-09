apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Backyard Sports Baseball 2007 (U)(SLUS-21403)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00189cb8,0x08096140)
eeObj.WriteMem32(0x00258500,0x3c013f40)
eeObj.WriteMem32(0x00258504,0x4481f000)
eeObj.WriteMem32(0x00258508,0xc6010068)
eeObj.WriteMem32(0x0025850c,0xc602006c)
eeObj.WriteMem32(0x00258510,0x461e0843)
eeObj.WriteMem32(0x00258514,0xe6010068)
eeObj.WriteMem32(0x00258518,0x08062730)
end

emuObj.AddVsyncHook(widescreen)