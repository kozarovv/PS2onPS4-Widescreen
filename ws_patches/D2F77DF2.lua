apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rayman 2 - Revolution (SLUS_20138)
--comment=Widescreen hack

-- 16:9
eeObj.WriteMem32(0x0018c7d0,0x3c013f40)
eeObj.WriteMem32(0x0018c7e0,0x4481f000)
eeObj.WriteMem32(0x0018c7e4,0x461e0842)
eeObj.WriteMem32(0x0011811c,0x461e6303)
end

emuObj.AddVsyncHook(widescreen)