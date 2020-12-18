apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=All-Star Baseball 2003 (U)(SLUS-20311)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
--Y-fov
--803f013c 00088144 02631646
eeObj.WriteMem32(0x003764a8,0x3c013fe4)

--Zoom
--803f013c 00108144 34600046
eeObj.WriteMem32(0x0038ee34,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)