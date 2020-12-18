apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Chicken Little (K)(SLKA-25345)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--0040013c 00608144 803f013c 00708144
eeObj.WriteMem32(0x00312a10,0x3c013fc0)
eeObj.WriteMem32(0x00312a24,0x00000000)

eeObj.WriteMem32(0x00312a1c,0x08127f30)
eeObj.WriteMem32(0x0049fcc0,0x3c173f40)
eeObj.WriteMem32(0x0049fcc4,0x4497f000)
eeObj.WriteMem32(0x0049fcc8,0x461e6343)
eeObj.WriteMem32(0x0049fccc,0x44817000)
eeObj.WriteMem32(0x0049fcd0,0x080c4a88)

end

emuObj.AddVsyncHook(widescreen)