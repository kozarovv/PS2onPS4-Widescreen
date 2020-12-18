apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pro Evolution Soccer 2011 [PAL-M5] (SLES_556.36)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x003CE010,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00125F2C,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)