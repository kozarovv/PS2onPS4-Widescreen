apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00477770,0x3c03bfab)

--Y-Fov
eeObj.WriteMem32(0x004777fc,0x3c03bf2a)

--Rendder fix
eeObj.WriteMem32(0x0047776c,0x3c024040)
--80c3033c 00088444 5c00053c
eeObj.WriteMem32(0x0045b92c,0x3c03c340)
eeObj.WriteMem32(0x0045b954,0x3c0243ab)
end

emuObj.AddVsyncHook(widescreen)