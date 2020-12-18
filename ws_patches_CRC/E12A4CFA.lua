apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Everybody's Golf (K)(SCKA-20057)
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)

-- 16:9
eeObj.WriteMem32(0x0005010C,0x0048ca94)
eeObj.WriteMem32(0x0048ca70,0x3c0143f0)
eeObj.WriteMem32(0x0048ca94,0xac81010c)
eeObj.WriteMem32(0x001506F4,0x3c023c39)
eeObj.WriteMem32(0x001506F8,0x3442a4ec)
eeObj.WriteMem32(0x004496a0,0x43955553)
end

emuObj.AddVsyncHook(widescreen)