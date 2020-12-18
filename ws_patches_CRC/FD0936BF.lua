apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Life Line (NTSC-U) (SLUS-20848)
--comment= Life Line Widescreen Hack by VIRGIN KLM

--Widescreen
eeObj.WriteMem32(0x0038D3A8,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)