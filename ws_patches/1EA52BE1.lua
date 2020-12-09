apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
--Y-fov
--803f013c 00088144 02631646
eeObj.WriteMem32(0x003795a8,0x3c013fe4)

--Zoom
--803f013c 00108144 34600046
eeObj.WriteMem32(0x0039567c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)