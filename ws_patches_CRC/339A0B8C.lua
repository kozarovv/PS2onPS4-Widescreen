apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Fatal Frame (SLUS-20388)

--gameplay
eeObj.WriteMem32(0x001885c4,0x3c013f40)

--cutscenes (port of pgert's value for pal version)
eeObj.WriteMem32(0x00183f4c,0x3c013f40)

--FMV's fix
eeObj.WriteMem32(0x00180b80,0x24027100)
eeObj.WriteMem32(0x00180b90,0x24027100)
eeObj.WriteMem32(0x00180b98,0x24091e00)

--Lens Flare's fix
eeObj.WriteMem32(0x00136FF4,0x3C013F2B)
eeObj.WriteMem32(0x001359B0,0x3C014270)
eeObj.WriteMem32(0x00135A94,0x3C0140F0)
eeObj.WriteMem32(0x00135A5C,0x3C014110)
eeObj.WriteMem32(0x00135A18,0x3C014190)

--Remove effects
--eeObj.WriteMem32(0x0034A8FC,0x00000000)
--eeObj.WriteMem32(0x0034AD7C,0x00000000)
--eeObj.WriteMem32(0x0034AC0C,0x00000000)
end

emuObj.AddVsyncHook(widescreen)