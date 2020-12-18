apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Bakusou Dekotora Densetsu - Tenkatouitsu Chyoujyoukessen (J)(SLPM-65816)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0020153c,0x3c013f40)
eeObj.WriteMem32(0x00201540,0x44810000)
eeObj.WriteMem32(0x00201548,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)