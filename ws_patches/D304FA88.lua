apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Super PickUps [NTSC-U] (SLUS_214.50)
--comment=Widescreen hack by Sergx12 & El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001F7FF0,0x3C023F18)

--Cars menus
eeObj.WriteMem32(0x00260F48,0x3C033F67)
end

emuObj.AddVsyncHook(widescreen)