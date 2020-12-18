apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MX Unleashed [NTSC-U] (SLUS_207.67)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00112E60,0x3C033CAA)
eeObj.WriteMem32(0x00112E64,0x3463A21D)
eeObj.WriteMem32(0x00112E58,0x3C023FAB)

--Render fix
eeObj.WriteMem32(0x001ACB64,0x3C03BFAB)
eeObj.WriteMem32(0x001ACB68,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)