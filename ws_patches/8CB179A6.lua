apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Zone of the Enders (U)(SLUS-20148)
--comment=Widescreen Hack
--16:9

eeObj.WriteMem32(0x00450e80,0x3c013f40)

--HUD (3rd)
--00 00 80 3F 55 55 15 3F 00 00 00 00 00 00 00 00 00 00 00 44 00 00 60 43 00 00 20 41 00 00 00 49 00 00 FA 43 00 00 FA 43 00 00 00 00 00 00 E1 45 
eeObj.WriteMem32(0x00010000,0x005E5384)
eeObj.WriteMem32(0x005E54C4,0x3f800000)

--
--00 00 FA C3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 55 D5 91 C3 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 67 02 6C 45 00 00 80 3F 00 00 00 00 00 00 00 00 C8 EC 1F 4D 00 00 00 00 00 00 FA BF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

end

emuObj.AddVsyncHook(widescreen)