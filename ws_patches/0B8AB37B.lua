apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
--battle
eeObj.WriteMem32(0x0022DBE4,0x3F4DDDDE)
--3d view
eeObj.WriteMem32(0x0043F564,0x3F4DDDDE)
end

emuObj.AddVsyncHook(widescreen)