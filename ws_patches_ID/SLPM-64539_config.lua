apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ultimate Fighting Championship 2 - Tap-Out (J)(SLPM-64539)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0025DB40,0x3f400000)

--Y-fov
--eeObj.WriteMem32(0x001aa9b4,0x3c013fdd)
--eeObj.WriteMem32(0x001aa9b8,0x34211234)
end

emuObj.AddVsyncHook(widescreen)