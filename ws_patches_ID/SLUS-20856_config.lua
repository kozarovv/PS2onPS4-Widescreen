apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Spy Fiction SLUS_208.56
--comment=Widescreen Hack
eeObj.WriteMem32(0x001df11c,0x3F2AAAAA)
end

emuObj.AddVsyncHook(widescreen)