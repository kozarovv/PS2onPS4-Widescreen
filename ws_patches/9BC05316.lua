apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=RedCard 20-03 (U)(SLUS-20354)
--comment=Widescreen Hack (NTSC-U by Arapapa)

--Gameplay 16:9 

eeObj.WriteMem32(0x00206ed4,0x3c023fe3)
eeObj.WriteMem32(0x00206edc,0x34428e39)

eeObj.WriteMem32(0x002578dc,0x3c023f22)
end

emuObj.AddVsyncHook(widescreen)