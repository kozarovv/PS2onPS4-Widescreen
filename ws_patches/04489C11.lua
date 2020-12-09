apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

--16:9
eeObj.WriteMem32(0x004515c0,0x3c013f40)

--HUD (3rd)
eeObj.WriteMem32(0x00010000,0x005EE62C)
eeObj.WriteMem32(0x005EE764,0x3f800000)
end

emuObj.AddVsyncHook(widescreen)