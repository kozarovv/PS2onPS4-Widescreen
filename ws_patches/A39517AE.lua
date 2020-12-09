apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Final Fantasy X (PAL-FR)
--comment=Final Fantasy X (PAL-FR) 16:9 Widescreen Hack, Render Fix & Progressive Scan
-- 16:9
eeObj.WriteMem32(0x001A5974,0x3C013F19)
eeObj.WriteMem32(0x001A5978,0x3421999A)
-- Render-Fix
eeObj.WriteMem32(0x0011973C,0x3C014440)
eeObj.WriteMem32(0x00176144,0x3C01442B)
-- Progressive Scan
eeObj.WriteMem32(0x002D98B4,0x3C050000)
end

emuObj.AddVsyncHook(widescreen)