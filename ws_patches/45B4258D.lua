apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00596958,0x0820f9d0)
eeObj.WriteMem32(0x0083e740,0x3c013f40)
eeObj.WriteMem32(0x0083e744,0x4481f000)
eeObj.WriteMem32(0x0083e748,0xc6010068)
eeObj.WriteMem32(0x0083e74c,0xc602006c)
eeObj.WriteMem32(0x0083e750,0x461e0843)
eeObj.WriteMem32(0x0083e754,0xe6010068)
eeObj.WriteMem32(0x0083e758,0x08165a58)
end

emuObj.AddVsyncHook(widescreen)