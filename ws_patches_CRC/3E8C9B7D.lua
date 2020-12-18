apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--Gameplay
--2044023c 00088244 f043023c
eeObj.WriteMem32(0x001315fc,0x3c024455)
eeObj.WriteMem32(0x00131600,0x34425555)
eeObj.WriteMem32(0x00131604,0x44820800)
eeObj.WriteMem32(0x00131608,0x3c0243f0)
eeObj.WriteMem32(0x0013160c,0x44911000)
end

emuObj.AddVsyncHook(widescreen)