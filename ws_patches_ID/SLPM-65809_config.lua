apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NanoBreaker [NTSC-J] (SLPM-65809)
--comment=Widescreen hack
eeObj.WriteMem32(0x001041f4,0x3c013f40)
eeObj.WriteMem32(0x001041f8,0x44810000)
eeObj.WriteMem32(0x00104200,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)