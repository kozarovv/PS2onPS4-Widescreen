apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen pnach by El_Patas

--Gameplay
eeObj.WriteMem32(0x003CED80,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00125F3C,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)