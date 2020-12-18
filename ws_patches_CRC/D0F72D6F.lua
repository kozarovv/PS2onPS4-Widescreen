apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pro Evolution Soccer 2010 [PAL-M5] (SLES_555.87)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x003BB6B0,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00125DAC,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)