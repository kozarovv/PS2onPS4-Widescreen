apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by VIRGIN KLM (NTSC-K by Arapapa)

--Widescreen
eeObj.WriteMem32(0x004fc3c0,0x3F400000)
--00 00 80 3F 00 00 00 3F 00 00 00 3F 00 00 80 40 00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 00 00 00 00 20 44 00 00 E0 43 00 00 20 44 00 00 60 43
end

emuObj.AddVsyncHook(widescreen)