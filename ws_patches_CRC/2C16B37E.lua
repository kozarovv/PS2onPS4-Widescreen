apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47 (NTSC-K by Arapapa)

eeObj.WriteMem32(0x005805F4,0x3FC71C71)
eeObj.WriteMem32(0x005811C8,0x3FC71C71)
eeObj.WriteMem32(0x00581250,0x3FC71C71)
eeObj.WriteMem32(0x005845F4,0x3FC71C71)
end

emuObj.AddVsyncHook(widescreen)