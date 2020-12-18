apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tekken 4 (PAL-M5) (SCES-50878)
--comment=Widescreen Hack by Nemesis2000
--comment=Ported to PAL by ElHecht

-- 16:9
eeObj.WriteMem32(0x002177e0,0x3c013f40)
eeObj.WriteMem32(0x002015d4,0x3c013f40)
eeObj.WriteMem32(0x002015d8,0x44810000)
eeObj.WriteMem32(0x002015e4,0x46006303)
eeObj.WriteMem32(0x0018d408,0x3c0143d6)
eeObj.WriteMem32(0x001f7028,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)