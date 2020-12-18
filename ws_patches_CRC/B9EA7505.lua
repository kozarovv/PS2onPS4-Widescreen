apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Street Racing Syndicate (U)(SLUS-20582)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x003451c0,0x3c013f1e)

--Y-Fov
eeObj.WriteMem32(0x00345210,0x3c013f40)
eeObj.WriteMem32(0x00345214,0x4481f000)
eeObj.WriteMem32(0x00345224,0x461e2103)



end

emuObj.AddVsyncHook(widescreen)