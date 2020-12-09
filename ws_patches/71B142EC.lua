apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0018FCC4,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)