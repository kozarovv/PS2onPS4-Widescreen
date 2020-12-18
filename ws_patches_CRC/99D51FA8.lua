apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Pro Evolution Soccer 2008 PAL Spain (SLES_549.13)
--comment= Widescreen pnach by El_Patas

--Gameplay
eeObj.WriteMem32(0x003B61A0,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x0012A64C,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)