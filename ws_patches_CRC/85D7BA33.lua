apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--680080c4 03100046
eeObj.WriteMem32(0x00345618,0x081034f0)
eeObj.WriteMem32(0x0040d3c0,0xc4800068)
eeObj.WriteMem32(0x0040d3c4,0x3c013f40)
eeObj.WriteMem32(0x0040d3c8,0x4481f000)
eeObj.WriteMem32(0x0040d3cc,0x461e0003)
eeObj.WriteMem32(0x0040d3d0,0xe4800068)
eeObj.WriteMem32(0x0040d3d4,0x080d1587)

end

emuObj.AddVsyncHook(widescreen)