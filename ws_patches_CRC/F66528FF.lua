apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tetsu 1 - Densha de Battle! [NTSC-J] [PBPX-95201](SLPS-20100)
--gametitle=Tetsu 1 - Densha de Battle! World Grand Prix [NTSC-J] [PBPX-95201]
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0019fc60,0x08030000)
eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0xc6010068)
eeObj.WriteMem32(0x000c000c,0xc602006c)
eeObj.WriteMem32(0x000c0010,0x461e0843)
eeObj.WriteMem32(0x000c0014,0xe6010068)
eeObj.WriteMem32(0x000c0018,0x08067f1a)

end

emuObj.AddVsyncHook(widescreen)