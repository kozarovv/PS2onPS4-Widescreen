apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Naruto - Ultimate Ninja 3 (U)(SLUS-21727)
--comment=Widescreen Hack (NTSC-U by Arapapa)

--16:9 (0000803f 0000803f 00008043)
eeObj.WriteMem32(0x00B60B54,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)