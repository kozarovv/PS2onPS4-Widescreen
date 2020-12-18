apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shinseiki GPX Cyber Formula - Road to the Infinity 4 (J)(SLPS-25814)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001883b0,0x08030000)

eeObj.WriteMem32(0x000c0000,0xc602000c)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1082)
eeObj.WriteMem32(0x000c0010,0x080620ed)

--Render fix
eeObj.WriteMem32(0x00188268,0x3c013fab)
eeObj.WriteMem32(0x0018826c,0x4481f800)
eeObj.WriteMem32(0x00188274,0x461fad42)
end

emuObj.AddVsyncHook(widescreen)