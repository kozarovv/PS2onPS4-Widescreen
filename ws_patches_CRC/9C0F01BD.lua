apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=XIII (PAL-M5) (SLES-51244)
--comment=Widescreen hack by nemesis2000 (pnach by ElHecht)

-- 16:9
eeObj.WriteMem32(0x001d7758,0x3c013f40)
eeObj.WriteMem32(0x001d77b0,0xae4100a8)
eeObj.WriteMem32(0x00356204,0x34028aa0)
eeObj.WriteMem32(0x003561b8,0x3c027560)
end

emuObj.AddVsyncHook(widescreen)