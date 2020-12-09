apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--4040023c 00208244 5c0626c6 600625c6 803f023c
eeObj.WriteMem32(0x0017b0ac,0x3c024010)
eeObj.WriteMem32(0x0017b0bc,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)