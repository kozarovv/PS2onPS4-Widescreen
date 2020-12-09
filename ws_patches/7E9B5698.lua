apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas, Render fixes by arapapa

--Gameplay 16:9
eeObj.WriteMem32(0x00FFB6B4,0x3FAB0000)
eeObj.WriteMem32(0x00FFB79C,0x3FAB0000)

--Render fix
eeObj.WriteMem32(0x00FFB704,0x3D000000)

--Rendering distancce
eeObj.WriteMem32(0x00FFB708,0x44000000)
end

emuObj.AddVsyncHook(widescreen)