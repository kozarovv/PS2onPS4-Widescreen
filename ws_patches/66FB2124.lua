apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-J by Arapapa)

-- Wide 16:9
-- 803f013c 00a88144 2e00043c
eeObj.WriteMem32(0x002010d0,0x3c013f40)

-- 803f013c 00a08144 c07b1646
eeObj.WriteMem32(0x00201170,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)