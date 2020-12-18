apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Monster Hunter G (K) (SLKA_252.19)
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--Wide hack 16:9 (Search the values are same Monseter Hunter.  F0FFBD27 B63F023C 0000BFFF 6EDB4234)
eeObj.WriteMem32(0x00134fa4,0x3c023ff3)
eeObj.WriteMem32(0x00134fac,0x3442cf35)
end

emuObj.AddVsyncHook(widescreen)