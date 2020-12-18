apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
eeObj.WriteMem32(0x001a5854,0x3c013f19)
eeObj.WriteMem32(0x001a5858,0x3421999a)
eeObj.WriteMem32(0x0011973c,0x3c014440)
eeObj.WriteMem32(0x00176124,0x3c01442b)

--alternate values
--eeObj.WriteMem32(0x00313F80,0x3F19999A)
eeObj.WriteMem32(0x00313F84,0x3F5EEEEF)

--world map
eeObj.WriteMem32(0x00262e40,0x3c013f40)

--sphere grid
eeObj.WriteMem32(0x0026479c,0x3c013f40)

--force English
--eeObj.WriteMem32(0x0031ce5e,byte,00000001
end

emuObj.AddVsyncHook(widescreen)