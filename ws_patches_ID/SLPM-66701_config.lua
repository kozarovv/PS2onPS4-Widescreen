apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=San Goku Shi XI [with Power-Up Kit] (J)(SLPM-66701)
--comment=Widescreen Hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0017da98,0x3c024455)
eeObj.WriteMem32(0x00C60880,0x44BFFF40)
end

emuObj.AddVsyncHook(widescreen)