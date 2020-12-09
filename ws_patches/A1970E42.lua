apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Musou Orochi - Maou Sairin (J)(SLPM-66953)
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

-- 16:9
000203ae 4c3f023c xxxxxxxx cdcc4234
eeObj.WriteMem32(0x001ac928,0x3c023f19)
eeObj.WriteMem32(0x001ac930,0x3442999a)

--4c3f033c ee3e023c 
eeObj.WriteMem32(0x001ac7b8,0x3c033f19)
eeObj.WriteMem32(0x001ac7c0,0x3463999a)

--cf43023c 803f043c
eeObj.WriteMem32(0x001ac4dc,0x3c02440a)
--cf43023c 9643053c
eeObj.WriteMem32(0x001ac3dc,0x3c02440a)
--8043023c 00008244 00000000
eeObj.WriteMem32(0x0026db78,0x3c0243ab)
end

emuObj.AddVsyncHook(widescreen)