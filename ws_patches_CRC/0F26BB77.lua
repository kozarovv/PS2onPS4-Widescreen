apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=.Hack--G.U Vol. II Reminisce Undub - Widescreen Hack (16:9) (NTSC-U) (cloudalmasai)
eeObj.WriteMem32(0x00A0CD94,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)