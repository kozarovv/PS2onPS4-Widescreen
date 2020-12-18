apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack  by Arapapa

--Gameplay 16:9

eeObj.WriteMem32(0x00157ec0,0x3c013f40)
eeObj.WriteMem32(0x00157f48,0x3c0143e0)
eeObj.WriteMem32(0x001a8780,0x3c013f40)
eeObj.WriteMem32(0x001a8798,0x3c0143e0)


end

emuObj.AddVsyncHook(widescreen)