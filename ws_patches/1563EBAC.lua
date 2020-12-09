apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02a51946 b00006e6
eeObj.WriteMem32(0x003586c4,0x080efd6c)

eeObj.WriteMem32(0x003bf5b0,0x4619a502)
eeObj.WriteMem32(0x003bf5b4,0x3c013f40)
eeObj.WriteMem32(0x003bf5b8,0x4481f000)
eeObj.WriteMem32(0x003bf5bc,0x461ea502)
eeObj.WriteMem32(0x003bf5c0,0x080d61b2)
end

emuObj.AddVsyncHook(widescreen)