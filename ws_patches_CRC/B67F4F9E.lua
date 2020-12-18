apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mafia [NTSC-U] (SLUS_206.71)
--comment=Widescreen Hack by El_Patas, Render fixes by arapapa

--Gameplay 16:9
eeObj.WriteMem32(0x00FF8D64,0x3FAB0000)
eeObj.WriteMem32(0x00FF8E4C,0x3FAB0000)

--Render fix
eeObj.WriteMem32(0x00FF8DB4,0x3D000000)

--Rendering distancce
eeObj.WriteMem32(0x00FF8DB8,0x44000000)
end

emuObj.AddVsyncHook(widescreen)