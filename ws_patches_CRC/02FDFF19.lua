apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002271b0,0x3c013f27)

--Y-Fov
eeObj.WriteMem32(0x0022726c,0x08030000)

eeObj.WriteMem32(0x000c0000,0x4616a503)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461ea502)
eeObj.WriteMem32(0x000c0014,0x08089c9c)
end

emuObj.AddVsyncHook(widescreen)