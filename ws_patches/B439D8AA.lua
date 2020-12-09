apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wave Rally (NTSC-J)(SLLPS-20170)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0018038c,0x3c013f94)
eeObj.WriteMem32(0x00180390,0x3421ef4e)

--Y-Fov
eeObj.WriteMem32(0x0018028c,0x3c013fe3)
eeObj.WriteMem32(0x00180290,0x3421ef4e)
end

emuObj.AddVsyncHook(widescreen)