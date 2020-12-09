apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0013ba74,0x3c013f12)
eeObj.WriteMem32(0x0013ba9c,0x3c013f10)

--noise off
--3c000000 06000000 (50452e00)
eeObj.WriteMem32(0x0073ABE0,0x00000000)

--noise off (alternate address)
--eeObj.WriteMem32(0x001c8dc0,0xe43f1fa0)

--black borders's fix
--eeObj.WriteMem32(0x001909b4,0x24050000)
end

emuObj.AddVsyncHook(widescreen)