apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00465888,0x08143754)

eeObj.WriteMem32(0x0050dd50,0x3c013f40)
eeObj.WriteMem32(0x0050dd54,0x4481f000)
eeObj.WriteMem32(0x0050dd58,0xc6010068)
eeObj.WriteMem32(0x0050dd5c,0xc602006c)
eeObj.WriteMem32(0x0050dd60,0x461e0843)
eeObj.WriteMem32(0x0050dd64,0xe6010068)
eeObj.WriteMem32(0x0050dd68,0x08119624)

----------------------------------------------/
--Zoom
--00bf013c 00388144 1000b07f (1st)
--eeObj.WriteMem32(0x00464b0c,0x3c01bec0)
--eeObj.WriteMem32(0x002b85ec,0x3c023f00)

--Y-Fov
--aa3f033c 333e023c abaa6334
--/eeObj.WriteMem32(0x002bc620,0x3c033fe3)
--eeObj.WriteMem32(0x002bc628,0x34638e2a)

--------------------------------------------------------/
-- 2D Zoom0
--eeObj.WriteMem32(0x0010e534,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)