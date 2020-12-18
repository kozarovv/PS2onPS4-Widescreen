apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov 4:3 Screen
--aa3f013c 93a92134 00888144
eeObj.WriteMem32(0x003f028c,0x3c013fe3)
eeObj.WriteMem32(0x003f0290,0x34218cc1)

--X-Fov fix - Internal Widescreen
--bb3f013c 61322134 00888144
eeObj.WriteMem32(0x003f02b4,0x3c013fe3)
eeObj.WriteMem32(0x003f02b8,0x34218e39)

--Y-Fov fix - Internal Widescreen 
eeObj.WriteMem32(0x003f02c0,0x3c013f80)
eeObj.WriteMem32(0x003f02c4,0x00000000)

--Render fix
--83a50046 003f013c 00608144
eeObj.WriteMem32(0x00407fdc,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)