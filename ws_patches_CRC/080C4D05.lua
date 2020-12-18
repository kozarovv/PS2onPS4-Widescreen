apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0015b63c,0x08084988)

eeObj.WriteMem32(0x00212620,0x46070202)
eeObj.WriteMem32(0x00212624,0x3c013f40)
eeObj.WriteMem32(0x00212628,0x4481f000)
eeObj.WriteMem32(0x0021262c,0x461e4202)
eeObj.WriteMem32(0x00212630,0x08056d90)
end

emuObj.AddVsyncHook(widescreen)