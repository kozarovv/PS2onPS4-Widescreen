apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Peter Jackson's King Kong - The Official Game of the Movie (K)(SLKA-25337)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f033c 0070023c 00088344
eeObj.WriteMem32(0x00127a84,0x3c033f40)

--Y-Fov
--aa3f033c (2nd and 3rd)
eeObj.WriteMem32(0x00134e28,0x3c033fe3)
eeObj.WriteMem32(0x00134e30,0x3c033fe3)

--Render fix
--003f023c 00088244 0c30040c
eeObj.WriteMem32(0x001529a0,0x3c023f40)
--------------------------------------------------------
--Menu text Y-Fov
--eeObj.WriteMem32(0x0011df60,0x3c033FE3)
end

emuObj.AddVsyncHook(widescreen)