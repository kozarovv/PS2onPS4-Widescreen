apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Max Payne (PAL-E) (SLES-50325)
--comment=Widescreen hack by ElHecht

-- 16:9
-- ELF file is called "MAIN_P.RUN"
eeObj.WriteMem32(0x0050e3b0,0x3c013f40)
eeObj.WriteMem32(0x0050e3b8,0x4481f000)
eeObj.WriteMem32(0x0050e3bc,0x0c04821c)
eeObj.WriteMem32(0x0050e3c0,0x00000000)
eeObj.WriteMem32(0x0050e3c4,0x461e0003)
eeObj.WriteMem32(0x0050e3d4,0x461e0082)
end

emuObj.AddVsyncHook(widescreen)