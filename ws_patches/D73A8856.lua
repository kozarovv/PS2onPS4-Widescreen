apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tekken Tag Tournament (SCPS_560.02)
--comment=widescreen 16:9 (NTSC-K) hack by 99skull
--credit goes to nemesis2000
eeObj.WriteMem32(0x0034B56C,0x3C013F40)
eeObj.WriteMem32(0x0034B570,0x44810000)
eeObj.WriteMem32(0x0034B578,0x4600C602)
end

emuObj.AddVsyncHook(widescreen)