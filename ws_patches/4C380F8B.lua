apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

--00 00 80 3F 83 F9 22 3F DB 0F C9 3F 00 00 00 BF
eeObj.WriteMem32(0x00692A2C,0x3F47AE14)

--00 00 80 3F 00 00 00 00 00 00 00 00 2F 00 00 00
eeObj.WriteMem32(0x006C64C4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)