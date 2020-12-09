apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--D0 14 00 00 00 00 00 00 00 00 80 3F 00 00 00 3F
eeObj.WriteMem32(0x00244B98,0x3f400000)

--Rener fix
--00 00 a0 43 00 00 00 00 00 00 00 00 00 00 00 00
eeObj.WriteMem32(0x00244aa8,0x43e00000)

--No Interlacing patch by Prafull
--fix shaking issue ingame
--38290500 08004264
eeObj.WriteMem32(0x0010c624,0x00000000)


--------------------------------------/
--Zoom
--803f013c 00108144 42180546
--eeObj.WriteMem32(0x00122914,0x3c013fab)

--Y-Fov
--14003de6 6000a427
--eeObj.WriteMem32(0x001978dc,0x08030000)
--eeObj.WriteMem32(0x000c0000,0x3c013f40)
--eeObj.WriteMem32(0x000c0004,0x4481f000)
--eeObj.WriteMem32(0x000c0008,0x461eef43)
--eeObj.WriteMem32(0x000c000c,0xe63d0014)
--eeObj.WriteMem32(0x000c0010,0x08065e38)

end

emuObj.AddVsyncHook(widescreen)