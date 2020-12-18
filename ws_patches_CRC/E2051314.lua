apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Starsky & Hutch (K)(SLKA-25090)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f033c 4d00013c
eeObj.WriteMem32(0x00125d1c,0x3c033f2a)

--Y-Fov
--3f333333 3f333333
eeObj.WriteMem32(0x004d39dc,0x3F066666)

--------------------------------------------------/
--X, Y-Fov but..
--eeObj.WriteMem32(0x002f8908,0x3c013f40)
--eeObj.WriteMem32(0x002f8978,0x3c013fc9)
--eeObj.WriteMem32(0x002f8908,0x3c013f40)
--eeObj.WriteMem32(0x002f8978,0x3c013fc9)
--eeObj.WriteMem32(0x002f8c64,0x3c013fc9)
end

emuObj.AddVsyncHook(widescreen)