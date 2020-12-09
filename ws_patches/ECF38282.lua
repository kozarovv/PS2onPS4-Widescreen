apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lilo and Stitch - Stitch no Daibouken (J)(SLPS-25153)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--803f043c 80bf033c 
eeObj.WriteMem32(0x00237c84,0x3c03bfab)

--Zoom
--003f023c 1000bfff
eeObj.WriteMem32(0x00237834,0x3c023f20)

----------------------------------/
--X-Fov.. needs render fix
--eeObj.WriteMem32(0x0065C550,0x3F2E8BA0)
--eeObj.WriteMem32(0x00237c80,0x3c043f40)
end

emuObj.AddVsyncHook(widescreen)