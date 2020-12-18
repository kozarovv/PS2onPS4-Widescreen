apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Romance of the Three Kingdoms XI SLUS_215.84
--comment=Widescreen Hack
eeObj.WriteMem32(0x00182FBC,0x3C024455)
eeObj.WriteMem32(0x00C57790,0x44BFFF40)
end

emuObj.AddVsyncHook(widescreen)