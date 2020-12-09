apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The King of Route 66 NTSC-U
--comment=Widescreen Hack
eeObj.WriteMem32(0x0012ff00,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)