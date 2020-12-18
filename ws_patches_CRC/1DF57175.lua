apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f023c 00a08144 f41a0a0c
eeObj.WriteMem32(0x00286ca0,0x3c013f69)

--Y-Fov
--0c00a1e7 22004014
eeObj.WriteMem32(0x00286cc8,0x08030000)
eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0x461e0f83)
eeObj.WriteMem32(0x000c000c,0xe7be000c)
eeObj.WriteMem32(0x000c0010,0x080a1b33)
end

emuObj.AddVsyncHook(widescreen)