apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-K by Arapapa)
--comment=Needs FULL BOOT. (If do not FULL BOOT, will be crashed.) 

--Widescreen hack 16:9

--Gameplay
--803f013c 00008144 00000000 00000000 03000146 (12th)
eeObj.WriteMem32(0x0012cd9c,0x3c013f40)

--2D Fix (Loading, Select Menu ,Upper Energy Bar and Pause Menu)
--0000403f 00000000 00000080 00000000 00000080
eeObj.WriteMem32(0x00535848,0x3f800000)
end

emuObj.AddVsyncHook(widescreen)