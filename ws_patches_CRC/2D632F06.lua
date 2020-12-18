apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x0011B0C0,0x3C023CAA)
eeObj.WriteMem32(0x0011B0CC,0x3C023FAB)

--Render fix
eeObj.WriteMem32(0x001A2AEC,0x3C03BFAB)
eeObj.WriteMem32(0x001A2AF0,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)