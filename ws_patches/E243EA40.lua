apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SnoCross 2 - Featuring Blair Morgan (U)(SLUS-21130)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--00000000 436b0546 380042e4
eeObj.WriteMem32(0x001ee198,0x3c01bf90)
eeObj.WriteMem32(0x001ee1a4,0x4481f000)

eeObj.WriteMem32(0x001ee1a8,0x46056b43)
eeObj.WriteMem32(0x001ee1ac,0x461e68c2)

end

emuObj.AddVsyncHook(widescreen)