apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

--00bf013c 00108144 0c0060c4
eeObj.WriteMem32(0x002b480c,0x3c01bf22)

--003f013c 00b08144 52f70a0c (NTSC-U 90f70a0c)
eeObj.WriteMem32(0x002bcd30,0x3c013f22)
end

emuObj.AddVsyncHook(widescreen)