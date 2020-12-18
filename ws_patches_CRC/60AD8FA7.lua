apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002ba00c,0x3FE38E08)
eeObj.WriteMem32(0x002b9fe4,0x3FE38E08)

--HUD
--eeObj.WriteMem32(0x0013f7ac,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)