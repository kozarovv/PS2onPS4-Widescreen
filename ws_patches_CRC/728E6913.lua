apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02a51946 b00006e6
eeObj.WriteMem32(0x0036ad84,0x080e25b8)
eeObj.WriteMem32(0x003896e0,0x4619a502)
eeObj.WriteMem32(0x003896e4,0x3c013f40)
eeObj.WriteMem32(0x003896e8,0x4481f000)
eeObj.WriteMem32(0x003896ec,0x461ea502)
eeObj.WriteMem32(0x003896f0,0x080dab62)


end

emuObj.AddVsyncHook(widescreen)