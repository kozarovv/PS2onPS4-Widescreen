apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f013c 00a08144 2d284002
eeObj.WriteMem32(0x0010878c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)