apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
--Y-fov
--803f013c 00088144 02631646
eeObj.WriteMem32(0x00264a50,0x3c013fe4)

--Zoom
--803f013c 00108144 34600046
eeObj.WriteMem32(0x00268b8c,0x3c013f40)

----------------------------------------------/
--X-fov (Needs render fix)
--803f013c 00108144 4000a227
--eeObj.WriteMem32(0x00264a64,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)