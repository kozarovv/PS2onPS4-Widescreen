apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

/Zoom
eeObj.WriteMem32(0x00249e58,0x3c033fc0)

--Y-Fov
eeObj.WriteMem32(0x00249ed0,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46031082)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1083)
eeObj.WriteMem32(0x000c0010,0x080927b5)
end

emuObj.AddVsyncHook(widescreen)