apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov (3D Layers -Basic 3D graphics, flare and etc)
--ffff7f3f eeeeee3e 0000803f 00ff7f45
eeObj.WriteMem32(0x00399d34,0x3f400000)
eeObj.WriteMem32(0x00399d8c,0x3f400000)
eeObj.WriteMem32(0x00399db4,0x3f400000)
eeObj.WriteMem32(0x0039a614,0x3f400000)
eeObj.WriteMem32(0x0039a944,0x3f400000)
eeObj.WriteMem32(0x0039ad88,0x3f400000)
eeObj.WriteMem32(0x0039ae40,0x3f400000)

--Render fix
eeObj.WriteMem32(0x0039ae28,0x3FE30000)
eeObj.WriteMem32(0x0039b140,0x3FE30000)
eeObj.WriteMem32(0x0039b82c,0x3FE30000)
eeObj.WriteMem32(0x0039b894,0x3FE30000)
end

emuObj.AddVsyncHook(widescreen)