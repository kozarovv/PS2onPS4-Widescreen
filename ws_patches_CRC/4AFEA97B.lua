apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00196ea0,0x3c013f40)
eeObj.WriteMem32(0x00196ea4,0x4481f000)
eeObj.WriteMem32(0x00196ef8,0x4616ad43)
eeObj.WriteMem32(0x00196efc,0x461ead42)
end

emuObj.AddVsyncHook(widescreen)