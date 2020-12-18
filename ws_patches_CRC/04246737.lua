apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02a51946 b00006e6
eeObj.WriteMem32(0x003b8a4c,0x08117314)

eeObj.WriteMem32(0x0045cc50,0x4619a502)
eeObj.WriteMem32(0x0045cc54,0x3c013f40)
eeObj.WriteMem32(0x0045cc58,0x4481f000)
eeObj.WriteMem32(0x0045cc5c,0x461ea502)
eeObj.WriteMem32(0x0045cc60,0x080ee294)
end

emuObj.AddVsyncHook(widescreen)