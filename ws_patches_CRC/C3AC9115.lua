apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sky Surfer (J)(SLPS-20012)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0024523c,0x3c013f40)
eeObj.WriteMem32(0x00245240,0x44810000)
eeObj.WriteMem32(0x00245248,0x4600c602)


end

emuObj.AddVsyncHook(widescreen)