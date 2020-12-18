apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney High School Musical 3 - Senior Year Dance! (E)(SLES-55398)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02020746 50004324 (1st))
eeObj.WriteMem32(0x002561b4,0x080b20a8)

eeObj.WriteMem32(0x002c82a0,0x46070202)
eeObj.WriteMem32(0x002c82a4,0x3c013f40)
eeObj.WriteMem32(0x002c82a8,0x4481f000)
eeObj.WriteMem32(0x002c82ac,0x461e4202)
eeObj.WriteMem32(0x002c82b0,0x0809586e)

--Hud
--2b44013c 00402134
eeObj.WriteMem32(0x002051b8,0x3c014464)
eeObj.WriteMem32(0x002051bc,0x34215555)

--Render fix
--803f013c 00388144 42080246
eeObj.WriteMem32(0x001d0fc8,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)