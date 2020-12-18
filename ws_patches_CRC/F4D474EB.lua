apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Atelier Iris-Eternal Mana 2 [NTSC-J](SLPM-65985)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--3D scenes
eeObj.WriteMem32(0x002abc0c,0x3c013f40)
eeObj.WriteMem32(0x002abc10,0x44810000)
eeObj.WriteMem32(0x002abc18,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x007cc1ac,0x44400000)
eeObj.WriteMem32(0x007cc1b4,0xc4400000)

--2D scenes
eeObj.WriteMem32(0x001913a0,0x3c014440)
eeObj.WriteMem32(0x001913a4,0x44810800)
eeObj.WriteMem32(0x001913a8,0x46010002)
eeObj.WriteMem32(0x001913ac,0xe7c00090)
eeObj.WriteMem32(0x001913b0,0x3c014480)
eeObj.WriteMem32(0x001913b4,0x44810800)
eeObj.WriteMem32(0x001913b8,0xc60000e8)
eeObj.WriteMem32(0x001913bc,0x46010002)
eeObj.WriteMem32(0x001913c0,0xe7c000a4)
eeObj.WriteMem32(0x001913c4,0xc60000e8)
eeObj.WriteMem32(0x001913c8,0x3c01c440)
eeObj.WriteMem32(0x001913cc,0x44810800)
end

emuObj.AddVsyncHook(widescreen)