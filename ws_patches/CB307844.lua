apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Super Trucks Racing NTSC-U (SLUS-20748)
--comment= Super Trucks Racing NTSC-U (SLUS-20748) Widescreen Hack by VIRGIN KLM

--Gameplay 3D Stuff
eeObj.WriteMem32(0x008138E4,0x3F400000)

--Menu 3D Stuff
eeObj.WriteMem32(0x0047DAE4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)