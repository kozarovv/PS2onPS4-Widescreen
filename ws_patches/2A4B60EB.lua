apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0047CA50,0x3f23d706)
eeObj.WriteMem32(0x00470434,0x3f23d706)
end

emuObj.AddVsyncHook(widescreen)