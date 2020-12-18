apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Brunswick Pro Bowling (U)(SLUS-21566)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--03001246 03150046
eeObj.WriteMem32(0x00196ae0,0x0807c9ac)
eeObj.WriteMem32(0x001f26b0,0x46001503)
eeObj.WriteMem32(0x001f26b4,0x3c013f40)
eeObj.WriteMem32(0x001f26b8,0x4481f000)
eeObj.WriteMem32(0x001f26bc,0x461ea503)
eeObj.WriteMem32(0x001f26c0,0x08065ab9)

----------------------------------------/
--X-Fov (2D +3D) needs render fix
--eeObj.WriteMem32(0x00196d20,0x08030000)
--eeObj.WriteMem32(0x000c0000,0x46030842)
--eeObj.WriteMem32(0x000c0004,0x3c013f40)
--eeObj.WriteMem32(0x000c0008,0x4481f000)
--eeObj.WriteMem32(0x000c000c,0x461e0842)
--eeObj.WriteMem32(0x000c0010,0x08065b49)

end

emuObj.AddVsyncHook(widescreen)