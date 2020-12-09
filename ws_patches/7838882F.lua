apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

-- Widescreen 16:9

eeObj.WriteMem32(0x0026efc8,0x3c194455)
eeObj.WriteMem32(0x0026efcc,0x37395555)
eeObj.WriteMem32(0x0026efe8,0x44990800)
eeObj.WriteMem32(0x0024881c,0x3c014456)
end

emuObj.AddVsyncHook(widescreen)