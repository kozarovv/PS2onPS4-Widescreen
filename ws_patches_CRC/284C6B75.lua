apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00110cf8,0x3c02427e)
eeObj.WriteMem32(0x00110cfc,0x34425c29)


------------------------------/
--X-Fov (2D + 3D, needs render fix)
--eeObj.WriteMem32(0x001caf48,0x080fc488)

--eeObj.WriteMem32(0x003f1220,0x46021883)
--eeObj.WriteMem32(0x003f1224,0x3c013f40)
--eeObj.WriteMem32(0x003f1228,0x4481f000)
--eeObj.WriteMem32(0x003f122c,0x461e1082)
--eeObj.WriteMem32(0x003f1230,0x08072bd3)
end

emuObj.AddVsyncHook(widescreen)