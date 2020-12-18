apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Onimusha - Blade Warriors (NTSC-U) (SLUS-20710)
--comment= Widescreen Hack by VIRGIN KLM

--Widescreen
eeObj.WriteMem32(0x004F7040,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)