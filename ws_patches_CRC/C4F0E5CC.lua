apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Auto Modellista (K) (SLPM-67540)
--comment=Widescreen hack by nemesis2000 and Arapapa

--Game-play
eeObj.WriteMem32(0x0032875c,0x3fe38e38)
eeObj.WriteMem32(0x00259b8c,0x3c023fe3)
eeObj.WriteMem32(0x00259b94,0x34428e38)

--Re-play
--abaaaa3f 00000000 00000000 80020000 (2nd)
eeObj.WriteMem32(0x0032889c,0x3fe38e38)
end

emuObj.AddVsyncHook(widescreen)