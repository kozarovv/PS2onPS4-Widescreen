apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Splashdown (U)(SLUS-20223)
--comment=Widescreen Hack by Sergx12 and El_Patas

--Gameplay 16:9

eeObj.WriteMem32(0x00213eb4,0x3C023FE4)
eeObj.WriteMem32(0x00213eb8,0x34428E39)
eeObj.WriteMem32(0x00214BEC,0x3C023CAC)
eeObj.WriteMem32(0x00214BF0,0x3442A21D)
eeObj.WriteMem32(0x002da00c,0x3C023CAC)
eeObj.WriteMem32(0x002da010,0x3442A21D)
eeObj.WriteMem32(0x00214E00,0x3C033F2B)

end

emuObj.AddVsyncHook(widescreen)