apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kyoushuu Kidou Butai - Kougeki Helicopter Senki (J)(SLPM-62538)
--comment=Widescreen Hack by Arapapa

--Gameplay 16:9

eeObj.WriteMem32(0x00104404,0x3c013f40)
eeObj.WriteMem32(0x00104408,0x44810000)
eeObj.WriteMem32(0x00104410,0x4600c602)

--Render Fix
--003f023c 00088244 42a51446
eeObj.WriteMem32(0x001613d0,0x3c023f30)
end

emuObj.AddVsyncHook(widescreen)