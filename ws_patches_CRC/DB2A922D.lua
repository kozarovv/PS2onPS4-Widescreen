apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Pro Evolution Soccer 2011 PAL Spain (SLES_556.38)
--comment= Widescreen pnach by El_Patas

--Gameplay
eeObj.WriteMem32(0x003CE010,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00125F1C,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)