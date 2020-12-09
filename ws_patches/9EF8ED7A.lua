apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hitman 2 - Silent Assassin (J)(SLPS-25269)
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

--Widescreen hack 16:9

--403f013c 00088144 00008244 20008046
eeObj.WriteMem32(0x0031d2fc,0x3c013f10)

--Zoom
--eeObj.WriteMem32(0x0021794c,0x3c014370)

--4c0020c6 32180046 00000000
eeObj.WriteMem32(0x002909e8,0x3c1b3f40)

--803f013c 00a08144 003f013c 00a88144  
eeObj.WriteMem32(0x00290bdc,0x3c013f00)
eeObj.WriteMem32(0x00290be0,0x4481a800)
eeObj.WriteMem32(0x00290be4,0x4615ad00)
eeObj.WriteMem32(0x00290be8,0x449bf000)

eeObj.WriteMem32(0x00290c24,0x461e0002)
eeObj.WriteMem32(0x00290c28,0x46150002)
eeObj.WriteMem32(0x00290c2c,0x4600a583)
eeObj.WriteMem32(0x00290c30,0xe6200054)
eeObj.WriteMem32(0x00290c34,0x4600a807)

--font fix
--eeObj.WriteMem32(0x00327508,0x080fa2b0)

--eeObj.WriteMem32(0x003e8ac0,0x46020002)
--eeObj.WriteMem32(0x003e8ac4,0x3c013f40)
--eeObj.WriteMem32(0x003e8ac8,0x4481f000)
--eeObj.WriteMem32(0x003e8acc,0x461e0002)
--eeObj.WriteMem32(0x003e8ad0,0x00000000)
--eeObj.WriteMem32(0x003e8ad4,0x080c9d43)
end

emuObj.AddVsyncHook(widescreen)