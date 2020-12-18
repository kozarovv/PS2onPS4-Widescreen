apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Koushien - Konpeki no Sora (J)(SLPS-20172)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00139fc0,0x08098395)
eeObj.WriteMem32(0x00139fc4,0x00000000)

eeObj.WriteMem32(0x00260e54,0x3c013f40)
eeObj.WriteMem32(0x00260e58,0x4481f000)
eeObj.WriteMem32(0x00260e5c,0xc6010068)
eeObj.WriteMem32(0x00260e60,0xc602006c)
eeObj.WriteMem32(0x00260e64,0x461e0843)
eeObj.WriteMem32(0x00260e68,0xe6010068)
eeObj.WriteMem32(0x00260e6c,0x0804e7f2)
end

emuObj.AddVsyncHook(widescreen)