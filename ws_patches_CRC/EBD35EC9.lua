apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tokobot Plus: Mysteries of the Karakuri [PAL] (SLES_544.87)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001238AC,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)