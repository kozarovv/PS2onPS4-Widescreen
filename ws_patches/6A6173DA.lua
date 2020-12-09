apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom (Gameplay)
--c2f5a83e eb51383e
eeObj.WriteMem32(0x0043ea90,0x3EE147AE)

--Zoom (Cutscenes)
--2e4c523f cf66553c (2nd)
eeObj.WriteMem32(0x0043b610,0x3F8C32B1)

--Y-Fov
--aaaaaa3f 3333f33f
eeObj.WriteMem32(0x0043bde0,0x3fe38e38)
end

emuObj.AddVsyncHook(widescreen)