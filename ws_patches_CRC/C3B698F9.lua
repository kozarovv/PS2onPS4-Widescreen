apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Baldur's Gate - Dark Alliance II (NTSC-J)(SLPM-65845)
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--Widescreen hack 16:9

--vert fov-
--ee3e013c f0ee2134 (NTSC-U efee2134)
eeObj.WriteMem32(0x001eb818,0x3c013f1f)
eeObj.WriteMem32(0x001eb81c,0x342149f1)
eeObj.WriteMem32(0x0023cf74,0x3c013f1f)
eeObj.WriteMem32(0x0023cf78,0x342149f1)
eeObj.WriteMem32(0x0027c63c,0x3c013f1f)
eeObj.WriteMem32(0x0027c640,0x342149f1)
eeObj.WriteMem32(0x002c5020,0x3c013f1f)
eeObj.WriteMem32(0x002c5024,0x342149f1)

--both fov+
--1
eeObj.WriteMem32(0x001eb82c,0x3c014440)

--2
eeObj.WriteMem32(0x0023cf84,0x3c014440)
eeObj.WriteMem32(0x0027c64c,0x3c014440)

--3
eeObj.WriteMem32(0x002c5030,0x3c014440)

--render fix
eeObj.WriteMem32(0x002c0efc,0x3c013ff0)
eeObj.WriteMem32(0x002c0f00,0x34210000)
eeObj.WriteMem32(0x002c4c64,0x3c013ff0)
eeObj.WriteMem32(0x002c4c68,0x34210000)
--eeObj.WriteMem32(0x002c0efc,0x3c013de3)
--eeObj.WriteMem32(0x002c0f00,0x3421f70a)
--eeObj.WriteMem32(0x002c4c64,0x3c013fe3)
--eeObj.WriteMem32(0x002c4c68,0x3421f70a)
end

emuObj.AddVsyncHook(widescreen)