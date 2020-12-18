apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Moto GP 4 (U)(SLUS-21159)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov Game play
--0000803f 5304c23f
eeObj.WriteMem32(0x005624a4,0x3f400000)

--Render fix
eeObj.WriteMem32(0x0055c608,0x43000000)
eeObj.WriteMem32(0x00564718,0x43000000)
eeObj.WriteMem32(0x00596438,0x43000000)
eeObj.WriteMem32(0x005916f0,0x40100000)
end

emuObj.AddVsyncHook(widescreen)