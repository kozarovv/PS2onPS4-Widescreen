apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cars [PAL-Spain] (SLES_540.07)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00116D50,0x3C033CAE)
eeObj.WriteMem32(0x00116D54,0x34635555)
eeObj.WriteMem32(0x00116D48,0x3C023FAB)

--Render fix
eeObj.WriteMem32(0x001D5D74,0x3C03BFAB)
eeObj.WriteMem32(0x001D5D78,0x3C023FAB)

--Better match for 2 player mode
--eeObj.WriteMem32(0x00116D50,0x3C033CB0)
--eeObj.WriteMem32(0x00116D54,0x34635555)
--eeObj.WriteMem32(0x00116D48,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)