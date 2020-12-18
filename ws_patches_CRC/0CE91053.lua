apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x00202714,0x3c013f40)
eeObj.WriteMem32(0x00202718,0x4481f000)
eeObj.WriteMem32(0x00202728,0x461e0003)
eeObj.WriteMem32(0x00332a74,0x3faaaaab)
eeObj.WriteMem32(0x00253e04,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)