apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by nemesis2000 (NTSC-J by Arapapa)
--Search values are different than PAL

--8043013c 00d88144 40371de6
eeObj.WriteMem32(0x001130e0,0x3c014340)

--953f013c 56552134 00f08144
eeObj.WriteMem32(0x00113094,0x3C013FC7)
eeObj.WriteMem32(0x00113098,0x3421C71C)
end

emuObj.AddVsyncHook(widescreen)