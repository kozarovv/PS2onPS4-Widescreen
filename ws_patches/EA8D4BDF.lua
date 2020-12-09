apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Incredible Hulk, The SLUS_217.65
--comment=Widescreen hack
eeObj.WriteMem32(0x00368440,0x3c013fdf)
eeObj.WriteMem32(0x00368444,0x342192c2)
eeObj.WriteMem32(0x00410854,0x3c013f20)
end

emuObj.AddVsyncHook(widescreen)