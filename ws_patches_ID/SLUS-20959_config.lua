apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dukes of Hazzard, The - Return of the General Lee (U)(SLUS-20959)
--comment=Widescreen Hack (NTSC-U by Arapapa)

--Gameplay 16:9 

eeObj.WriteMem32(0x003f8d00,0x3c013fc3)
eeObj.WriteMem32(0x003f8d04,0x34210c2c)
end

emuObj.AddVsyncHook(widescreen)