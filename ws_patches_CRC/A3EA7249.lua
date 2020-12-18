apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=This is Football: Soccer Sekai Senki 2003 (J)(SCPS-15034)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00154904,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)