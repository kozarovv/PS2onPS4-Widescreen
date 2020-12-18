apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Showdown - Legends of Wrestling (U)(SLUS-21017)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--000060e4 040062e4 080062e4
eeObj.WriteMem32(0x00249638,0x080c2984)

eeObj.WriteMem32(0x0030a610,0x3c023f40)
eeObj.WriteMem32(0x0030a614,0x4482f000)
eeObj.WriteMem32(0x0030a618,0x461e0002)
eeObj.WriteMem32(0x0030a61c,0xe4600000)
eeObj.WriteMem32(0x0030a620,0x0809258f)
end

emuObj.AddVsyncHook(widescreen)