apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=X-Men Legends SLUS_206.56
--comment=Widescreen Hack
--eeObj.WriteMem32(0x005cc888,0x3c023f34)
eeObj.WriteMem32(0x00720920,0x3FE147AE)
eeObj.WriteMem32(0x0072094c,0x3F000000)
eeObj.WriteMem32(0x00720950,0x3F000000)
eeObj.WriteMem32(0x00720958,0x3F8CCCCD)
eeObj.WriteMem32(0x00720954,0x3FA00000)
eeObj.WriteMem32(0x00D85448,0x3F666666)
eeObj.WriteMem32(0x00D85430,0x3F59999A)

--20D85448 --HUD Height
--206625A8 --HUD Resize
end

emuObj.AddVsyncHook(widescreen)