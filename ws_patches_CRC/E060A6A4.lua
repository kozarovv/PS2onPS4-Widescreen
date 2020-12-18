apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Katekyoo Hitman Reborn! Kindan no Yami no Delta [NTSC-J] (SLPS-25904)
--comment=Widescreen hack
eeObj.WriteMem32(0x0031D048,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)