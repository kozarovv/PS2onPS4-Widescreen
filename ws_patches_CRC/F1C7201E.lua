apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=24 - The Game (U)(SLUS-21268)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aa3f013c a8aa2134
--2a8e2134 e33f013c
--eeObj.WriteMem32(0x00460364,0x3c013fe3)
--eeObj.WriteMem32(0x00460368,0x34218e2a)

--Zoom Fix (When turn on the Widescreen option)
--6000023c 2cbd428c 
eeObj.WriteMem32(0x002fbea0,0x3c020000)
end

emuObj.AddVsyncHook(widescreen)