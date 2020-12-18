apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cars Race-O-Rama (U)(SLUS-21883)
--gametitle=Cars Race-O-Rama (E)(SLES-55536)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--0040063c 00c0033c 803f053c
eeObj.WriteMem32(0x0014750c,0x3c063fc0)

--Y-Fov
--c3180446 000080e4 040080ac
eeObj.WriteMem32(0x00147540,0x080c4cd4)
eeObj.WriteMem32(0x00313350,0x460418c3)
eeObj.WriteMem32(0x00313354,0x3c013f40)
eeObj.WriteMem32(0x00313358,0x4481f000)
eeObj.WriteMem32(0x0031335c,0x461e18c3)
eeObj.WriteMem32(0x00313360,0x08051d51)

--------------------------------------------/
--eeObj.WriteMem32(0x001475b0,0x3c023f1c)
--Hud Zoom
--eeObj.WriteMem32(0x003ce03c,0x3c0b3f40)
--Y-Fov
--eeObj.WriteMem32(0x00112ed4,0x3c023faa)
--eeObj.WriteMem32(0x00112edc,0x3c033cae)
--eeObj.WriteMem32(0x00112ee0,0x34633000)

end

emuObj.AddVsyncHook(widescreen)