apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--Wide Screen 16:9 (4C3F013C CDCC2134 00b08144)
eeObj.WriteMem32(0x001aaab8,0x3c013f19)
eeObj.WriteMem32(0x001aaabc,0x3421999a)

--render fix 
eeObj.WriteMem32(0x0011be04,0x3c014440)
eeObj.WriteMem32(0x0017c07c,0x3c01442b)

--portraits, dressphere and cursor width on menu
--803f013c 00b88144 8a3f013c
eeObj.WriteMem32(0x00213f94,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)