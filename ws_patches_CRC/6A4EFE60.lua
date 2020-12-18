apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesiss2000

--Widescreen hack 16:9

eeObj.WriteMem32(0x001ce4ac,0x3c013f19)
eeObj.WriteMem32(0x001ce4b0,0x3421999a)
eeObj.WriteMem32(0x0011966c,0x3c014440)
eeObj.WriteMem32(0x0019f664,0x3c01442b)

--world map
--803f013c 00008144 01001124
eeObj.WriteMem32(0x00258790,0x3c013f40)

--sphere grid
--803f013c 00a08144 e601023c
eeObj.WriteMem32(0x00259ff4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)