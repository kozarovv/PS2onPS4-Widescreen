apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Atelier Iris 2: The Azoth of Destiny  (SLUS-21327)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--3D scenes
eeObj.WriteMem32(0x002aab6c,0x3c013f40)
eeObj.WriteMem32(0x002aab70,0x44810000)
eeObj.WriteMem32(0x002aab78,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x007cfdec,0x44400000)
eeObj.WriteMem32(0x007cfdf4,0xc4400000)

--2D scenes
eeObj.WriteMem32(0x00190164,0x3c014440)
eeObj.WriteMem32(0x00190168,0x44810800)
eeObj.WriteMem32(0x0019016c,0x46010002)
eeObj.WriteMem32(0x00190170,0xe7c00090)
eeObj.WriteMem32(0x00190174,0x3c014480)
eeObj.WriteMem32(0x00190178,0x44810800)
eeObj.WriteMem32(0x0019017c,0xc60000e8)
eeObj.WriteMem32(0x00190180,0x46010002)
eeObj.WriteMem32(0x00190184,0xe7c000a4)
eeObj.WriteMem32(0x00190188,0xc60000e8)
eeObj.WriteMem32(0x0019018c,0x3c01c440)
eeObj.WriteMem32(0x00190190,0x44810800)
end

emuObj.AddVsyncHook(widescreen)