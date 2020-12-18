apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=All-Star Baseball 2003 (E)(SLES-50447)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
--Y-fov
--803f013c 00088144 02631646
eeObj.WriteMem32(0x00376c70,0x3c013fe4)

--Zoom
--803f013c 00108144 34600046
eeObj.WriteMem32(0x00391edc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)