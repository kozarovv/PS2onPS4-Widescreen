apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hard Knock High (E)(SLES-54590)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom in
--003f013c 00008144 2000b07f
eeObj.WriteMem32(0x00182d54,0x3c013ec5)

--X-Fov + Zoom Out
--803f013c 00708144 80000426
eeObj.WriteMem32(0x00182dd8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)