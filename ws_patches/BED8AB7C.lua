apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Surf's Up (U)(SLUS-21572)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f033c 8041023c
eeObj.WriteMem32(0x006040c4,0x3c033ec0)
eeObj.WriteMem32(0x0060d108,0x3c033ec0)

end

emuObj.AddVsyncHook(widescreen)