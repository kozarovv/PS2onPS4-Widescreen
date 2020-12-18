apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dirge of Cerberus - Final Fantasy VII (J)(SLPM-66271)
--comment=Widescreen hack

--Widescreen hack 16:9

eeObj.WriteMem32(0x0042c428,0x3c013fc9)
eeObj.WriteMem32(0x0042c42c,0x342162d8)
eeObj.WriteMem32(0x0042cf74,0x3C013EC0)
end

emuObj.AddVsyncHook(widescreen)