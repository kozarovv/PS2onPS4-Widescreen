apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Pro Evolution Soccer 5 PAL Spain (SLES_535.44)
--comment= Widescreen pnach by El_Patas

--Gameplay
eeObj.WriteMem32(0x0036AAE0,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00129EEC,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)