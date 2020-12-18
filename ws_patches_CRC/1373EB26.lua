apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0028029c,0x3c013f2f)

--Y-Fov
eeObj.WriteMem32(0x001abc40,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46070a02)
eeObj.WriteMem32(0x000c0004,0x3c013fa6)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e4202)
eeObj.WriteMem32(0x000c0010,0x0806af11)

----------------------------
--X-Fov (Needs render fix)
--eeObj.WriteMem32(0x001abb98,0x08030000)
--eeObj.WriteMem32(0x000c0000,0x24420050)
--eeObj.WriteMem32(0x000c0004,0x3c013f40)
--eeObj.WriteMem32(0x000c0008,0x4481f000)
--eeObj.WriteMem32(0x000c000c,0x461e4202)
--eeObj.WriteMem32(0x000c0010,0x0806aee7)
end

emuObj.AddVsyncHook(widescreen)