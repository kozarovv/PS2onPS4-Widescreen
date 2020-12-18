apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Driving Emotion Type-S NTSC-U (SLUS-20113) Widescreen Hack by VIRGIN KLM

--Gameplay 3D
eeObj.WriteMem32(0x0045B2A8,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)