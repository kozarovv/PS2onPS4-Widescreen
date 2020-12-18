apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Worms 3D (E)(SLES-51843)
--comment=Widescreen Hack by El_Patas & Arapapa

--Widescreen hack 16:9

--43080a46 c00085e4 03000b46
eeObj.WriteMem32(0x002ca6ec,0x08108388)

eeObj.WriteMem32(0x00420e20,0x460a0843)
eeObj.WriteMem32(0x00420e24,0x3c013f40)
eeObj.WriteMem32(0x00420e28,0x4481f000)
eeObj.WriteMem32(0x00420e2c,0x461e0842)
eeObj.WriteMem32(0x00420e30,0x080b29bc)

----------------------------------------------/
--42080846 180086e4 07000046
--eeObj.WriteMem32(0x00287c08,0x08108388)

--eeObj.WriteMem32(0x00420e20,0x46080842)
--eeObj.WriteMem32(0x00420e24,0x3c013f40)
--eeObj.WriteMem32(0x00420e28,0x4481f000)
--eeObj.WriteMem32(0x00420e2c,0x461e0842)
--eeObj.WriteMem32(0x00420e30,0x080a1f03)

--eeObj.WriteMem32(0x002CA964,0x3C013F00)
--eeObj.WriteMem32(0x00287B98,0x3C014010)

--Y-Fov adress
--eeObj.WriteMem32(0x00287c00,0x46081082)

--eeObj.WriteMem32(0x00287b84,0x3c01c080)
end

emuObj.AddVsyncHook(widescreen)