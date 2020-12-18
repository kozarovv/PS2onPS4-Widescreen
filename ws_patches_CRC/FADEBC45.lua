apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Genji (PAL-M5) (SCES-53328)
--comment=Widescreen Hack (16:9) by ElHecht, Arapapa
eeObj.WriteMem32(0x002e2e50,0x3c014455)

--FMV fix by Arapapa
--e043013c 00608144 00108244
eeObj.WriteMem32(0x002c84e4,0x3c0143a8)
end

emuObj.AddVsyncHook(widescreen)