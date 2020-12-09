apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by nemesis2000 (NTSC-K by Arapapa)

--Widescreen hack 16:9

--803f023c 9007a327 9407a2af
eeObj.WriteMem32(0x00311150,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)