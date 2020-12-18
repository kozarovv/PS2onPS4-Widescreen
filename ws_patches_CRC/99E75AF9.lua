apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ikkyou Powerful Major League 3 (J)(SLPM-55062)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--Gameplay
--2044023c 00088244 f043023c
eeObj.WriteMem32(0x001336ac,0x3c024455)
eeObj.WriteMem32(0x001336b0,0x34425555)
eeObj.WriteMem32(0x001336b4,0x44820800)
eeObj.WriteMem32(0x001336b8,0x3c0243f0)
eeObj.WriteMem32(0x001336bc,0x44911000)


end

emuObj.AddVsyncHook(widescreen)