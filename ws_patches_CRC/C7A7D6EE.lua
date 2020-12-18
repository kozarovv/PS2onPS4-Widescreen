apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gungrave [NTSC-J] [SLPM-65153]
--comment=Widescreen hack by Arapapa and ElHecht


eeObj.WriteMem32(0x001bee9c,0x3c013f40)
eeObj.WriteMem32(0x001beea0,0x44810000)
eeObj.WriteMem32(0x001beea8,0x4600c602)

eeObj.WriteMem32(0x00143750,0x2402010e)
end

emuObj.AddVsyncHook(widescreen)