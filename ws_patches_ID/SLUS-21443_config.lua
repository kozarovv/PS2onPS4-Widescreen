apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Da Vinci Code, The SLUS_214.43
--comment=Widescreen hack
eeObj.WriteMem32(0x003ae5d8,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)