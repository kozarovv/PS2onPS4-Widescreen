apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Monster Jam (U)(SLUS-21635)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001ad9c8,0x080d8c90)
eeObj.WriteMem32(0x001ad9cc,0x00000000)

eeObj.WriteMem32(0x00363240,0x3c013f40)
eeObj.WriteMem32(0x00363244,0x4481f000)
eeObj.WriteMem32(0x00363248,0xc6010068)
eeObj.WriteMem32(0x0036324c,0xc602006c)
eeObj.WriteMem32(0x00363250,0x461e0843)
eeObj.WriteMem32(0x00363254,0xe6010068)
eeObj.WriteMem32(0x00363258,0x0806b674)
end

emuObj.AddVsyncHook(widescreen)