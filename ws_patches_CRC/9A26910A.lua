apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SnoCross 2 - Featuring Blair Morgan (E)(SLES-54157)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001effec,0x3c01bf90)
eeObj.WriteMem32(0x001efff0,0x4481f000)

eeObj.WriteMem32(0x001f0000,0x46056b43)
eeObj.WriteMem32(0x001f0004,0x461e68c2)

end

emuObj.AddVsyncHook(widescreen)