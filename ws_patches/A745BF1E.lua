apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Cat Fight (K)(SLKA-15041
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x0018ffb4,0x3c013f40)
eeObj.WriteMem32(0x0018ffb8,0x44810000)
eeObj.WriteMem32(0x0018ffc0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)