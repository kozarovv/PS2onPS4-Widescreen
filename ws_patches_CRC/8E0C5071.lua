apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Circus Maximus - Chariot Wars (E)(SLES-50935)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00177d28,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46010003)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0002)
eeObj.WriteMem32(0x000c0010,0x0805df4b)

--Render fix
eeObj.WriteMem32(0x00183e00,0x3c024406)
end

emuObj.AddVsyncHook(widescreen)