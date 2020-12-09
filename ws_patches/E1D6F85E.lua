apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Death by Degrees (SLUS-20934)
--comment=Widescreen Hack

--gameplay by ElHecht
eeObj.WriteMem32(0x00188250,0x3c023fe3)
eeObj.WriteMem32(0x00188258,0x3443bbd6)
eeObj.WriteMem32(0x0018606c,0x3c023fe3)
eeObj.WriteMem32(0x00186070,0x3443bbd6)
eeObj.WriteMem32(0x001f5c88,0x3c023fe3)
eeObj.WriteMem32(0x001f5c90,0x3442bbd6)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x005D9054,0x3faaaaaa)

--black border's fix by nemesis2000
eeObj.WriteMem32(0x0032b0a8,0x3c023f80)
end

emuObj.AddVsyncHook(widescreen)