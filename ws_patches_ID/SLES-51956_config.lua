apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bionicle (PAL-M6) (SLES-51956)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0010c298,0x3c014370)
eeObj.WriteMem32(0x0010c0d8,0x3c013faa)

-- 16:10
--eeObj.WriteMem32(0x0010c298,0x3c194385)
--eeObj.WriteMem32(0x0010c29c,0x37395555)
--eeObj.WriteMem32(0x0010c2d8,0xafb90000)
--eeObj.WriteMem32(0x0010c0d8,0x3c013f99)
end

emuObj.AddVsyncHook(widescreen)