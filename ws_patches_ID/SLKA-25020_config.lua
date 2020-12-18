apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TimeSplitters 2 (K)(SLKA-25020)
--comment=Widescreen hack by No.47 (NTSC-K by Arapapa)

eeObj.WriteMem32(0x00571870,0x3FC71C71)
eeObj.WriteMem32(0x00572444,0x3FC71C71)
eeObj.WriteMem32(0x005724CC,0x3FC71C71)
eeObj.WriteMem32(0x00575870,0x3FC71C71)





--40490fdb3F955555 (1,2)
--3c8888893F955555
--3f860a923F955555
end

emuObj.AddVsyncHook(widescreen)