apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Final Fantasy X (PAL-E) (SCES-50490)
--comment=Final Fantasy X (PAL-E) [SCES-50490] 16:9 Widescreen Hack, Render Fix & Progressive Scan
-- 16:9
eeObj.WriteMem32(0x001A5974,0x3C013F19)
eeObj.WriteMem32(0x001A5978,0x3421999A)
-- Render-Fix
eeObj.WriteMem32(0x0011973C,0x3C014440)
eeObj.WriteMem32(0x00176144,0x3C01442B)
-- Progressive Scan
eeObj.WriteMem32(0x002D98B4,0x3C050000)

--world map
eeObj.WriteMem32(0x00263068,0x3c013f40)

--sphere grid
eeObj.WriteMem32(0x002649bc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)