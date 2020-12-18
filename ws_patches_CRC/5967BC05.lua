apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-J by Arapapa)

--Widescreen Hack 16:9

--0000803f eeeeee3e 00000045 00000045 0000803f ffff7f4b
eeObj.WriteMem32(0x001F3A54,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)