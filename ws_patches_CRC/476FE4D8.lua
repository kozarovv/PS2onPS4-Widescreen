apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-J by Arapapa)

--16:9 (0000803f 0000803f 00008043 00008043)
eeObj.WriteMem32(0x00919380,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)