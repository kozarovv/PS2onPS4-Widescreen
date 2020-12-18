apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach NTSC-J by Arapapa)
--Nemesis2000's search values did not apply to NTSC-J

--vert fov-  eeeeee3e 00ff7445 00803b45 (5 Times)
eeObj.WriteMem32(0x002c418c,0x3f1f49f4)
eeObj.WriteMem32(0x002c41d4,0x3f1f49f4)
eeObj.WriteMem32(0x002c4258,0x3f1f49f4)
eeObj.WriteMem32(0x002c42ac,0x3f1f49f4)
eeObj.WriteMem32(0x002c5ce0,0x3f1f49f4)

--both fov+  3c014480 (5 times from Top address)
eeObj.WriteMem32(0x00139794,0x3c014440)
eeObj.WriteMem32(0x00141b20,0x3c014440)
eeObj.WriteMem32(0x001494dc,0x3c014440)
eeObj.WriteMem32(0x0014f668,0x3c014440)
eeObj.WriteMem32(0x001fab70,0x3c014440)

--render fix value by No.47 (703daa3f 2 times)
eeObj.WriteMem32(0x002c4238,0x3fe3d70a)
eeObj.WriteMem32(0x002c4298,0x3fe3d70a)

--No interlacing by asasega
eeObj.WriteMem32(0x001fd4ac,0x34030001)
end

emuObj.AddVsyncHook(widescreen)