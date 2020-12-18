apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Otostaz [NTSC-J] [SCPS-11024]
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--3f800000 3f70a3d7
eeObj.WriteMem32(0x00294790,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)