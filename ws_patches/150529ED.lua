apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x003A62F8,0x3f400000)
eeObj.WriteMem32(0x0014cdc8,0x3c023f30)
end

emuObj.AddVsyncHook(widescreen)