apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Naruto - Ultimate Ninja 2 (NTSC-U) (SLUS_21575)
--comment=Widescreen Hack (NTSC-U by Arapapa)

--16:9 (0000803f 0000803f 00008043)
eeObj.WriteMem32(0x00A47A00,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)