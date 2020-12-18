apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Force turn on Widescreen
--00 00 00 00 01 00 00 00 AB AA AA 3F 00 00 80 3F
eeObj.WriteMem32(0x0042B080,byte,00000001

--Zoom fix
--29 5C 8F 3F 00 00 C0 43 00 00 C0 43
eeObj.WriteMem32(0x0042b094,0x3f800000)

----------------------------------------------------/
--X-Fov
--eeObj.WriteMem32(0x00114d9c,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)