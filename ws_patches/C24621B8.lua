apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Everybody's Golf (PAL-M5) (SCES-52582)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0005010C,0x005522A4)
eeObj.WriteMem32(0x00552280,0x3c0143f0)
eeObj.WriteMem32(0x005522A4,0xac81010c)
eeObj.WriteMem32(0x00154548,0x3c023c39)
eeObj.WriteMem32(0x0015454c,0x3442a4ec)
eeObj.WriteMem32(0x0050c420,0x43aaaaab)
end

emuObj.AddVsyncHook(widescreen)