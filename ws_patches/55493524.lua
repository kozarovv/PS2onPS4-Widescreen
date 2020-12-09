apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f013c 00008144 380017e6
eeObj.WriteMem32(0x004ecfa8,0x3c013f40)

--803f013c 00108144 83b50146
eeObj.WriteMem32(0x004ed038,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)