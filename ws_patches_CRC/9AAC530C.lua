apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Final Fantasy X-2 (PAL-Fr) (SLES-51816)
--comment=Final Fantasy X-2 (PAL-Fr) (SLES-51816) Widescreen Hack (16:9) by ElHecht, ported to PAL-French by Z_Boy
-- 16:9
eeObj.WriteMem32(0x001b49cc,0x3c013f19)
eeObj.WriteMem32(0x001b49d0,0x3421999a)
-- Render-Fix
eeObj.WriteMem32(0x0012369c,0x3c014440)
eeObj.WriteMem32(0x00185f7c,0x3c01442b)

--portraits, dressphere and cursor width on menu
eeObj.WriteMem32(0x0021aa64,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)