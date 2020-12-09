apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00100770,0x3c013f2a)
eeObj.WriteMem32(0x00100778,0x3c013fe3)
eeObj.WriteMem32(0x0010077c,0x34218e2a)
end

emuObj.AddVsyncHook(widescreen)