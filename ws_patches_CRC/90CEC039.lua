apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rally Fusion - Race of Champions (U)(SLUS-20361)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--Zoom
--333f013c 33332134 43200146 > 063f013c 66662134 43200146
eeObj.WriteMem32(0x001066e0,0x3c013f06)
eeObj.WriteMem32(0x001066e4,0x34216666)

--Y-Fov
--6000c0c4 c3180046
eeObj.WriteMem32(0x00106714,0x08030000)

eeObj.WriteMem32(0x000c0000,0x460018c3)
eeObj.WriteMem32(0x000c0004,0x3c013ea2)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e18c2)
eeObj.WriteMem32(0x000c0010,0x080419c6)
end

emuObj.AddVsyncHook(widescreen)