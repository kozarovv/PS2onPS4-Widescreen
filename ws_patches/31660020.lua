apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x001bf138,0x3c013f40)
eeObj.WriteMem32(0x001bf13c,0x4481f000)
eeObj.WriteMem32(0x001bf144,0x461e6302)
eeObj.WriteMem32(0x00159994,0x3c024368)
end

emuObj.AddVsyncHook(widescreen)