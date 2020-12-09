apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x00316a50,0x3c023fe3)
eeObj.WriteMem32(0x00316a54,0x34428e38)
end

emuObj.AddVsyncHook(widescreen)