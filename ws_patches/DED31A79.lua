apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Operation Air Assault 2 (E)(SLES-54804)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00156dd4,0x3c013f40)
eeObj.WriteMem32(0x00156dd8,0x44812000)
eeObj.WriteMem32(0x00156e2c,0x461ebdc3)
eeObj.WriteMem32(0x00156e30,0x4604bdc2)
end

emuObj.AddVsyncHook(widescreen)