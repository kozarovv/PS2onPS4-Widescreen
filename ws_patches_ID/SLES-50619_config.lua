apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jonny Moseley Mad Trix (E)(SLES-50619)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00008144 e0ffbd27
eeObj.WriteMem32(0x001fdbb8,0x3c013f27)

--Y-Fov
--02000246 42410546
eeObj.WriteMem32(0x001fdb88,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46020002)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e0002)
eeObj.WriteMem32(0x000c0014,0x0807f6e3)
end

emuObj.AddVsyncHook(widescreen)