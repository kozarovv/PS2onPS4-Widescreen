apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MLB Power Pros 2008 (U)(SLUS-21748)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--Gameplay
--2044023c 00088244 f043023c
eeObj.WriteMem32(0x001332ac,0x3c024455)
eeObj.WriteMem32(0x001332b0,0x34425555)
eeObj.WriteMem32(0x001332b4,0x44820800)
eeObj.WriteMem32(0x001332b8,0x3c0243f0)
eeObj.WriteMem32(0x001332bc,0x44911000)

--Event
--eeObj.WriteMem32(0x001011d0,0x3c024455)

end

emuObj.AddVsyncHook(widescreen)