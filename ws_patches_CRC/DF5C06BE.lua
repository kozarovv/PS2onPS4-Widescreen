apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mat Hoffman's Pro BMX 2 [PAL] (SLES_508.70)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x0037B1B8,0x3C033FC0)
eeObj.WriteMem32(0x001CC274,0x3C023FAB)

--Alternative Gameplay 16:9
--eeObj.WriteMem32(0x001CC264,0x3C023CA8)
--eeObj.WriteMem32(0x001CC274,0x3C023FAB)

--Render fix
eeObj.WriteMem32(0x00254128,0x3C023C2E)
end

emuObj.AddVsyncHook(widescreen)