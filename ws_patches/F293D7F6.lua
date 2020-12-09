apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=S.L.A.I. - Steel Lancer Arena International (NTSC-J)(SLPM-65791)
--comment=Widescreen hack by El_Patas (NTSC-J by Arapapa)

--Widescreen hack 16:9

--803f033c e17a4234 00608344 00688244
eeObj.WriteMem32(0x00267b18,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)