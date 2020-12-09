apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (NTSC-Kby Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00503d34,0x3f400000)
eeObj.WriteMem32(0x00503f28,0x3f2aaaaa)
eeObj.WriteMem32(0x00503f30,0x3f2aaaaa)

eeObj.WriteMem32(0x00229f68,0x3c01bf2a)
eeObj.WriteMem32(0x00229f6c,0x44816800)
eeObj.WriteMem32(0x00229f9c,0x46007307)
eeObj.WriteMem32(0x00229fa0,0x46006bc7)
end

emuObj.AddVsyncHook(widescreen)