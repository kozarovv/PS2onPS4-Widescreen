apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0017A6C0,0x3C023F40)

--Render fix
eeObj.WriteMem32(0x0017C954,0x3C033FAB)
end

emuObj.AddVsyncHook(widescreen)