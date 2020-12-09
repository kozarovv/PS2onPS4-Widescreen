apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DSF Fussball Manager 2002 (G)(SLES-50558)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
--803f013c 00688144 5900033c
eeObj.WriteMem32(0x00237550,0x3c013f40)


end

emuObj.AddVsyncHook(widescreen)