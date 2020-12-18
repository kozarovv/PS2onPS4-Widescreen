apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Delta Force - Black Hawk Down (U)(SLUS-21124)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov (4:3)
--abaaaa3f 00010000 17d0a63f
eeObj.WriteMem32(0x0043a3e0,0x3fe38e39)

--Zoom fix (4:3 and 16:9)
--0000ace7 0000a27b 0008a248 (3rd)
eeObj.WriteMem32(0x001a8744,0x080c5798)
eeObj.WriteMem32(0x00315e60,0x3c013f52)
eeObj.WriteMem32(0x00315e64,0x4481f000)
eeObj.WriteMem32(0x00315e68,0x461e6303)
eeObj.WriteMem32(0x00315e6c,0xe7ac0000)
eeObj.WriteMem32(0x00315e70,0x0806a1d2)

end

emuObj.AddVsyncHook(widescreen)