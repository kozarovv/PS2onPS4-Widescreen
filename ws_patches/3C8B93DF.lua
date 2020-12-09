apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00608144 5ae3120c
eeObj.WriteMem32(0x00220934,0x3c013f20)

--Y-Fov
--403f013c 00088144 0000a0e7
eeObj.WriteMem32(0x00220944,0x3c013f10)

----------------------------------------------/

--Zoom (except Player hands)
--eeObj.WriteMem32(0x003ab034,0x3c013fab)

--X-Fov
--803f013c 00008144 03000146 4000a0e7(5th)
--eeObj.WriteMem32(0x0044ac28,0x3c013f40)

--eeObj.WriteMem32(0x001d8ff4,0x3c013f40)

--Zoom
--eeObj.WriteMem32(0x00451d84,0x3c013f40)
--eeObj.WriteMem32(0x0044af84,0x3c013f40)

--eeObj.WriteMem32(0x00208ebc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)