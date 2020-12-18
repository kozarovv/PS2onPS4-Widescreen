apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Musashiden II - Blade Master [NTSC-J] (SLPM-66008)
--comment=Widescreen Hack
eeObj.WriteMem32(0x003E5D08,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)