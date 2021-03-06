apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Shin Megami Tensei - Digital Devil Saga (SLUS-20974) (CRC-D7273511)
--gametitle=Digital Devil Saga
eeObj.WriteMem32(0x003245E4,0x3FC6E2B5)

Optional shadow alpha hack
--comment=Shadow Override (Krisan Thyme)
eeObj.WriteMem32(0x0032C880,0x00000000)
eeObj.WriteMem32(0x0032C884,0x00000000)
eeObj.WriteMem32(0x0032C888,0x00000000)
eeObj.WriteMem32(0x0032C88C,0x00000000)
eeObj.WriteMem32(0x0032C890,0x00000000)
eeObj.WriteMem32(0x0032C894,0x00000000)
eeObj.WriteMem32(0x0032C898,0x00000000)
eeObj.WriteMem32(0x0032C89C,0x00000000)
eeObj.WriteMem32(0x0032C8A0,0x00000000)
eeObj.WriteMem32(0x0032C8A4,0x00000000)
eeObj.WriteMem32(0x0032C8A8,0x00000000)
eeObj.WriteMem32(0x0032C8AC,0x00000000)
eeObj.WriteMem32(0x0032C8B0,0x00000000)
eeObj.WriteMem32(0x0032C8B4,0x00000000)
eeObj.WriteMem32(0x0032C8B8,0x00000000)
eeObj.WriteMem32(0x0032C8BC,0x00000000)
eeObj.WriteMem32(0x0032C8C0,0x00000000)
eeObj.WriteMem32(0x0032C8C4,0x00000000)
eeObj.WriteMem32(0x0032C8C8,0x00000000)
eeObj.WriteMem32(0x0032C8CC,0x00000000)
eeObj.WriteMem32(0x0032C8D0,0x00000000)
eeObj.WriteMem32(0x0032C8D4,0x00000000)
eeObj.WriteMem32(0x0032C8D8,0x00000000)
eeObj.WriteMem32(0x0032C8DC,0x00000000)
eeObj.WriteMem32(0x0032C8E0,0x00000000)
eeObj.WriteMem32(0x0032C8E4,0x00000000)
eeObj.WriteMem32(0x0032C8E8,0x00000000)
eeObj.WriteMem32(0x0032C8EC,0x00000000)
eeObj.WriteMem32(0x0032C8F0,0x00000000)
eeObj.WriteMem32(0x0032C8F4,0x00000000)
eeObj.WriteMem32(0x0032C8F8,0x00000000)
eeObj.WriteMem32(0x0032C8FC,0x00000000)

----comment=Progressive Scan Mode (Altimor)
--eeObj.WriteMem32(0x002D1558,0x00000000)
--eeObj.WriteMem32(0x002D5060,0x00000000)
--eeObj.WriteMem32(0x002EFD7C,0x24110000)
--eeObj.WriteMem32(0x002EFD80,0x24120050)
--eeObj.WriteMem32(0x002EFD84,0x24020001)
end

emuObj.AddVsyncHook(widescreen)