apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Contra [NTSC-J] (SLPM-62264)
--comment=Widescreen hack
eeObj.WriteMem32(0x005dc404,0x3c013f40)
eeObj.WriteMem32(0x005dc408,0x44810000)
eeObj.WriteMem32(0x005dc410,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)