apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kung Fu Panda [PAL-Spain] (SLES_552.36)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0069520C,0x3FE38E38)
end

emuObj.AddVsyncHook(widescreen)