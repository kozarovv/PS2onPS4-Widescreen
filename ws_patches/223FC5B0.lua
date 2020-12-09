apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


eeObj.WriteMem32(0x004fd4e4,0x3c013fab)
eeObj.WriteMem32(0x003aaeb8,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)