apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov Game play
--0000803f 5304c23f
eeObj.WriteMem32(0x0055f24c,0x3f400000)

--Render fix
eeObj.WriteMem32(0x005614c8,0x43000000)
eeObj.WriteMem32(0x005593b0,0x43000000)
eeObj.WriteMem32(0x0058e608,0x40100000)
eeObj.WriteMem32(0x00593330,0x43000000)

------------------------
--2D menu
--eeObj.WriteMem32(0x0051a8c0,0x3f400000)
--eeObj.WriteMem32(0x0051a8d4,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)