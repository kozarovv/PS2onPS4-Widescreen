apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Godzilla Kaijuu Dairansen - Chikyuu Saishuu Kessen (J)(SLPM-65805)
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

eeObj.WriteMem32(0x00243dcc,0x08054684)
eeObj.WriteMem32(0x00243dd0,0x00000000)

eeObj.WriteMem32(0x00151a10,0x3c013f40)
eeObj.WriteMem32(0x00151a14,0x4481f000)
eeObj.WriteMem32(0x00151a18,0x461e0002)
eeObj.WriteMem32(0x00151a1c,0xe6000124)
eeObj.WriteMem32(0x00151a20,0xe6010128)
eeObj.WriteMem32(0x00151a24,0x08090f75)
end

emuObj.AddVsyncHook(widescreen)