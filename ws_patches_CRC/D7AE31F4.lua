apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MX vs ATV Unleashed [PAL] (SLES_531.06)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00111F70,0x3C033CAA)
eeObj.WriteMem32(0x00111F74,0x3463A21D)
eeObj.WriteMem32(0x00111F68,0x3C023FAB)

--Alternative Gameplay 16:9
--eeObj.WriteMem32(0x001B7EB4,0x3C023F18)
--eeObj.WriteMem32(0x0022C9C8,0x3C043FE3)
--eeObj.WriteMem32(0x0022C9CC,0x348E8E39)

--Render fix
eeObj.WriteMem32(0x0018EAF4,0x3C03BFAB)
eeObj.WriteMem32(0x0018EAF8,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)