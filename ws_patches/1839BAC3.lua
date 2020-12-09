apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00126ce0,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)