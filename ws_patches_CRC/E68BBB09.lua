apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pro Evolution Soccer 2012 [PAL-M5] (SLES_556.56)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x003CED10,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00125F4C,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)