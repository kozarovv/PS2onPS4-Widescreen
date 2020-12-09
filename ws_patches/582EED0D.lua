apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x005dbffc,0x3c013f40)
eeObj.WriteMem32(0x005dc000,0x44810000)
eeObj.WriteMem32(0x005dc008,0x4600c602)
eeObj.WriteMem32(0x00677bf4,0x44d8aaab)
eeObj.WriteMem32(0x00677bf8,0xc4d8aaab)



end

emuObj.AddVsyncHook(widescreen)