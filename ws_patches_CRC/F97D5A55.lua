apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Everblue 2 (J)(SLPM-62214)
--comment=Widescreen Hack by El_Patas (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00228708,0x3c033f06)
end

emuObj.AddVsyncHook(widescreen)