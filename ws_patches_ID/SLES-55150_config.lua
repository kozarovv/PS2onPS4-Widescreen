apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TNA iMPACT!: Total Nonstop Action Wrestling (PAL-M5) (SLES-55150)
--comment=Widescreen hack by ElHecht

-- 16:9
-- note: data is stored in "TNAPOV.ELF"
eeObj.WriteMem32(0x00043f80,0x002250e0)
eeObj.WriteMem32(0x002250e0,0x3c013f40)
eeObj.WriteMem32(0x002250e4,0x4481f000)
eeObj.WriteMem32(0x002250ec,0x461ef703)
eeObj.WriteMem32(0x002250f4,0x4602f083)
end

emuObj.AddVsyncHook(widescreen)