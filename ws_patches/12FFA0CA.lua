apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9
--0000803f c3f5e83e 0000803f 00007a44
eeObj.WriteMem32(0x0024b594,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)