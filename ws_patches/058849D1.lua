apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--c2090746 c2380346
eeObj.WriteMem32(0x0025c038,0x08030000)

eeObj.WriteMem32(0x000c0000,0x460709c2)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e39c2)
eeObj.WriteMem32(0x000c0010,0x0809700f)

--Render fix
--003f023c 6000bfff 00008244
eeObj.WriteMem32(0x00158dc4,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)