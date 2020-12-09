apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DBZ Sparking Meteor (SLKA-25407) (NTSC-K)
--comment=16:9 widescreen hack

--16:9 widescreen hack by sergx12, porting by 99skull
eeObj.WriteMem32(0x00130BF0,0x3C013F10)
eeObj.WriteMem32(0x002FE54C,0x3FC71C76)
eeObj.WriteMem32(0x002FE614,0x43C71C71)
end

emuObj.AddVsyncHook(widescreen)