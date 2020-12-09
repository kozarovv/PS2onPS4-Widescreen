apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Anubis - Zone of the Enders (J)(SLPM-65236)
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x0012a110,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)