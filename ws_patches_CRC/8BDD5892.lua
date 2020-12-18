apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bust-A-Block [PAL] (SLES_517.13)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x0014ae24,0x3c013f40)
eeObj.WriteMem32(0x0014ae28,0x44810000)
eeObj.WriteMem32(0x0014ae30,0x4600c602)
eeObj.WriteMem32(0x0015b564,0x3c013f40)
eeObj.WriteMem32(0x0015b568,0x44810000)
eeObj.WriteMem32(0x0015b570,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)