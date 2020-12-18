apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Terminator 3: The Redemption (U)(SLUS-20852)
--comment=Widescreen Hack (NTSC-U by Arapapa)

--Gameplay 16:9 

eeObj.WriteMem32(0x00416bf4,0x3c013ec0)
eeObj.WriteMem32(0x00416dc4,0x3c013f22)
end

emuObj.AddVsyncHook(widescreen)