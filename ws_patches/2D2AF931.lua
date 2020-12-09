apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen pnach by El_Patas

--Gameplay
eeObj.WriteMem32(0x00397920,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x0012A53C,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)