apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jak and Daxter - The Precursor Legacy (PAL-M6) (SCES-50361)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x002af8b0,0x3f1f3b64)
eeObj.WriteMem32(0x002af85c,0xbf1f3b64)
eeObj.WriteMem32(0x0079f728,0x0015130c)
end

emuObj.AddVsyncHook(widescreen)