apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Demento [NTSC-J] (SLPM-65913)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )

--16:9
eeObj.WriteMem32(0x0010e31c,0x3c013f40)
eeObj.WriteMem32(0x0010e320,0x44810000)
eeObj.WriteMem32(0x0010e328,0x4600c602)

--cutscenes fix
eeObj.WriteMem32(0x002ba3d4,0x34a67400)
eeObj.WriteMem32(0x002ba3ec,0x34a98c00)

--black borders fix
eeObj.WriteMem32(0x002c9ea8,0x00000000)
eeObj.WriteMem32(0x002c9eac,0x03e00008)
eeObj.WriteMem32(0x002c9eb0,0x00000000)

--16:10
--eeObj.WriteMem32(0x0010e31c,0x3c013f55)
--eeObj.WriteMem32(0x0010e320,0x34215555)
--eeObj.WriteMem32(0x0010e328,0x44810000)
--eeObj.WriteMem32(0x0010e32c,0x4600c602)

--X-Fov
--eeObj.WriteMem32(0x0012284c,0x3c024309)
--eeObj.WriteMem32(0x00122850,0x3443248F)
end

emuObj.AddVsyncHook(widescreen)