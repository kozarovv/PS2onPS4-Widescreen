apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Need for Speed - Underground (K)(SLKA-25136)
--comment=Widescreen hack by nemesis2000 (NTSC-Kby Arapapa)

--Widescreen hack 16:9

--0000803f 0000803f cdcc4c3f
eeObj.WriteMem32(0x0050b0b4,0x3f400000)
eeObj.WriteMem32(0x0050b2a8,0x3f2aaaaa)
eeObj.WriteMem32(0x0050b2b0,0x3f2aaaaa)

--FMV's fix
eeObj.WriteMem32(0x0022cf88,0x3c01bf2a)
eeObj.WriteMem32(0x0022cf8c,0x44816800)
eeObj.WriteMem32(0x0022CFBC,0x46007307)
eeObj.WriteMem32(0x0022CFC0,0x46006bc7)
end

emuObj.AddVsyncHook(widescreen)