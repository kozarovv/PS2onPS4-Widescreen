apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9
eeObj.WriteMem32(0x00229278,0x3C033F06)
end

emuObj.AddVsyncHook(widescreen)