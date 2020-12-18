apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shadow Hearts SLUS_203.47
--comment=Widescreen Hack
eeObj.WriteMem32(0x0028d4f0,0x3c043f40)
eeObj.WriteMem32(0x00282394,0x3c023f40)
--eeObj.WriteMem32(0x00324530,0x3c023f40)
--eeObj.WriteMem32(0x0034a728,0x3c033f50)
eeObj.WriteMem32(0x0039fe08,0x3c023f40)
eeObj.WriteMem32(0x003d5704,0x3c023f40)
eeObj.WriteMem32(0x003eec44,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)