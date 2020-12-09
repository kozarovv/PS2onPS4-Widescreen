apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Front Mission 4 (J)(SLPM-65443)
--comment=Widescreen hack by 99skull (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00159268,0x3c024380)
eeObj.WriteMem32(0x00159304,0x3c023ee6)
eeObj.WriteMem32(0x0015930c,0x34426666)
eeObj.WriteMem32(0x00217ee8,0x3c023ee6)
eeObj.WriteMem32(0x00217ef0,0x34426666)
end

emuObj.AddVsyncHook(widescreen)