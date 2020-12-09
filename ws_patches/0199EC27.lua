apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00183950,0x3c023ff3)
eeObj.WriteMem32(0x00183954,0x3442cf9a)
end

emuObj.AddVsyncHook(widescreen)