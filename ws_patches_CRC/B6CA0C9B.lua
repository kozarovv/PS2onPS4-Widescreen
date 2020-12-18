apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Super PickUps [PAL-M5] (SLES_548.18)
--comment=Widescreen hack by Sergx12 & El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00143080,0x3C023F19)

--Cars menus
eeObj.WriteMem32(0x001ABAC8,0x3C033F67)
end

emuObj.AddVsyncHook(widescreen)