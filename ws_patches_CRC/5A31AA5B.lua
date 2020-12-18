apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-U by Arapapa)

-- 16:9
-- note: data is stored in "TNAPOV.ELF"
eeObj.WriteMem32(0x00043f80,0x00225090)
eeObj.WriteMem32(0x00225090,0x3c013f40)
eeObj.WriteMem32(0x00225094,0x4481f000)
eeObj.WriteMem32(0x0022509c,0x461ef703)
eeObj.WriteMem32(0x002250a4,0x4602f083)
end

emuObj.AddVsyncHook(widescreen)