apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 60 - The Tokusatsu Henshin Hero (J)(SLPM-62510)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0017eb54,0x3c013f40)
eeObj.WriteMem32(0x0017eb58,0x44810000)
eeObj.WriteMem32(0x0017eb60,0x4600c602)


end

emuObj.AddVsyncHook(widescreen)