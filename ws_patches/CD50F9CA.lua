apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Hustle - Detroit Streets (U)(SLUS-21335)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--1855448e 60524cc4
eeObj.WriteMem32(0x002dd184,0x0811f104)

eeObj.WriteMem32(0x0047c410,0xc44c5260)
eeObj.WriteMem32(0x0047c414,0x3c013faa)
eeObj.WriteMem32(0x0047c418,0x3421aaab)
eeObj.WriteMem32(0x0047c41c,0x4481f000)
eeObj.WriteMem32(0x0047c420,0x461e6302)
eeObj.WriteMem32(0x0047c424,0x080b7462)
end

emuObj.AddVsyncHook(widescreen)