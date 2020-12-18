apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fighting Fury [PAL] (SLES_510.56)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9    
eeObj.WriteMem32(0x00102f54,0x3c013f40)
eeObj.WriteMem32(0x00102f58,0x44810000)
eeObj.WriteMem32(0x00102f60,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)