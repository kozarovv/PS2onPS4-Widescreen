apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MX Unleashed [PAL] (SLES_520.43)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00112E40,0x3C033CAA)
eeObj.WriteMem32(0x00112E44,0x3463A21D)
eeObj.WriteMem32(0x00112E38,0x3C023FAB)

--Render fix
eeObj.WriteMem32(0x001ACBD4,0x3C03BFAB)
eeObj.WriteMem32(0x001ACBD8,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)