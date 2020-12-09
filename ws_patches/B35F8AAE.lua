apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Spider-Man 3 (K)(SLKA-25385)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x0032ab04,0x3c023f22)
eeObj.WriteMem32(0x00348a58,0x3c023f22)
end

emuObj.AddVsyncHook(widescreen)