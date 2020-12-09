apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Menu 3D Fov and ETC
eeObj.WriteMem32(0x001b85a4,0x3c013fe3)
eeObj.WriteMem32(0x001b85a8,0x3421328e)
eeObj.WriteMem32(0x0034a324,0x3c013fe3)
eeObj.WriteMem32(0x0034a328,0x3421328e)
eeObj.WriteMem32(0x0034a570,0x3c013fe3)
eeObj.WriteMem32(0x0034a574,0x3421328e)

--Game Play and Replay Fov
eeObj.WriteMem32(0x00154284,0x3c013fe3)
eeObj.WriteMem32(0x00154288,0x34217fa6)
eeObj.WriteMem32(0x002bc1d8,0x3c013fe3)
eeObj.WriteMem32(0x002bc1dc,0x34217fa6)

--Menu 3D Zoom
eeObj.WriteMem32(0x00387a60,0x3c013f40)

--Game Play Zoom
eeObj.WriteMem32(0x00387a14,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)