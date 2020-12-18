apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=.Hack--G.U Undub - Widescreen Hack (16:9) (NTSC-U) (cloudalmasai)
eeObj.WriteMem32(0x0094E194,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)