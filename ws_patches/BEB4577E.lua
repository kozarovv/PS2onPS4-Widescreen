apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Max Payne (NTSC-U)
--comment=Widescreen hack by ElHecht

-- 16:9
-- ELF file is called "MAIN.RUN"
eeObj.WriteMem32(0x0050e030,0x3c013f40)
eeObj.WriteMem32(0x0050e038,0x4481f000)
eeObj.WriteMem32(0x0050e03c,0x0c04821c)
eeObj.WriteMem32(0x0050e040,0x00000000)
eeObj.WriteMem32(0x0050e044,0x461e0003)
eeObj.WriteMem32(0x0050e054,0x461e0082)
end

emuObj.AddVsyncHook(widescreen)