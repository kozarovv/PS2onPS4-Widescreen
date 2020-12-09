apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=International Superstar Soccer 3 (PAL-M5) (SLES-51435)
--comment=Widescreen hack by ElHecht

-- 16:9
-- Note: data is stored in ELF00.DAT
eeObj.WriteMem32(0x0002a2a0,0x0012b658)
eeObj.WriteMem32(0x00129904,0x3c023f40)
eeObj.WriteMem32(0x0012b480,0x3c0443d6)
end

emuObj.AddVsyncHook(widescreen)