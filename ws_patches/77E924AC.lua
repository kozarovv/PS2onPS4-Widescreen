apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
--00bf023c 86000046
eeObj.WriteMem32(0x003a0ed0,0x3c02bf55)
end

emuObj.AddVsyncHook(widescreen)