apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

-- 16:9 
eeObj.WriteMem32(0x003EC404,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)