apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f013c 00488144 40600146
eeObj.WriteMem32(0x002b516c,0x3c013ee4)

--Y-Fov
--02000246 42410546
eeObj.WriteMem32(0x002b5060,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46020002)
eeObj.WriteMem32(0x000c0004,0x3c1b3f40)
eeObj.WriteMem32(0x000c0008,0x449bf000)
eeObj.WriteMem32(0x000c000c,0x461e0003)
eeObj.WriteMem32(0x000c0010,0x080ad419)

end

emuObj.AddVsyncHook(widescreen)