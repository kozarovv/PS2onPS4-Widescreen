apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02a51946 b00006e6
eeObj.WriteMem32(0x0036a7a4,0x080e2478)

eeObj.WriteMem32(0x003891e0,0x4619a502)
eeObj.WriteMem32(0x003891e4,0x3c013f40)
eeObj.WriteMem32(0x003891e8,0x4481f000)
eeObj.WriteMem32(0x003891ec,0x461ea502)
eeObj.WriteMem32(0x003891f0,0x080da9ea)
end

emuObj.AddVsyncHook(widescreen)