apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Silent Hill 2 (PAL-M6) (SLES-50382) Widescreen Hack (16:9) by ElHecht
eeObj.WriteMem32(0x010E4C14,0x43A8F5C3)
--eeObj.WriteMem32(0x010E4C18,0x43E00000)
end

emuObj.AddVsyncHook(widescreen)