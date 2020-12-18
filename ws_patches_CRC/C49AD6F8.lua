apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Pro Evolution Soccer 2012 PAL Spain (SLES_556.58)
--comment= Widescreen pnach by El_Patas

--Gameplay
eeObj.WriteMem32(0x003CEC90,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00125F2C,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)