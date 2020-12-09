apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nippon Daisumo (J)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--803f023c 00688244 f03e023c
eeObj.WriteMem32(0x001548f4,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)