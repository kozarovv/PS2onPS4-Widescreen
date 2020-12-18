apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Steambot Chronicles SLUS_213.44
--comment=Widescreen Hack
eeObj.WriteMem32(0x001329c0,0x3c033f40)
eeObj.WriteMem32(0x00132818,0x3c0643d6)
end

emuObj.AddVsyncHook(widescreen)