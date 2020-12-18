apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=LMA Manager 2005 (E)(SLES-52693)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02a51946 b00006e6
eeObj.WriteMem32(0x0011a80c,0x080f62c4)

eeObj.WriteMem32(0x003d8b10,0x4619a502)
eeObj.WriteMem32(0x003d8b14,0x3c013f40)
eeObj.WriteMem32(0x003d8b18,0x4481f000)
eeObj.WriteMem32(0x003d8b1c,0x461ea502)
eeObj.WriteMem32(0x003d8b20,0x08046a04)
end

emuObj.AddVsyncHook(widescreen)