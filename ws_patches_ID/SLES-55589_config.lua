apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Pro Evolution Soccer 2010 PAL Spain (SLES_555.89)
--comment= Widescreen pnach by El_Patas

--Gameplay
eeObj.WriteMem32(0x003BB6B0,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00125DDC,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)