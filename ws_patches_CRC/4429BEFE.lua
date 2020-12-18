apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0036AA60,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00129EEC,0x3C053FAB)
end

emuObj.AddVsyncHook(widescreen)