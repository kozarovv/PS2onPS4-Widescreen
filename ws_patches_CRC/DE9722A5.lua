apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=God Hand (PAL-M5) (SLES-54490)
--comment=Widescreen Hack (16:9) by ElHecht and Arapapa

-- 16:9
eeObj.WriteMem32(0x00138814,0x3c014455)
eeObj.WriteMem32(0x00153a38,0x3c014455)

--Font fix
eeObj.WriteMem32(0x002afc20,0x3c013f2c)
eeObj.WriteMem32(0x002afc24,0x3421cccd)
end

emuObj.AddVsyncHook(widescreen)