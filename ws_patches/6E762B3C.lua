apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00008144 0000a27b
eeObj.WriteMem32(0x002a6634,0x3c013f23)

--Y-Fov
--c2390046 280085e4
eeObj.WriteMem32(0x0025fa1c,0x080a5210)
eeObj.WriteMem32(0x00294840,0x460039c2)
eeObj.WriteMem32(0x00294844,0x3c013f40)
eeObj.WriteMem32(0x00294848,0x4481f000)
eeObj.WriteMem32(0x0029484c,0x461e39c3)
eeObj.WriteMem32(0x00294850,0x08097e88)

--------------------------------------------
--X-Fov (needs render fix)
--eeObj.WriteMem32(0x0025f9bc,0x080a5210)
--eeObj.WriteMem32(0x00294840,0x46062102)
--eeObj.WriteMem32(0x00294844,0x3c013f40)
--eeObj.WriteMem32(0x00294848,0x4481f000)
--eeObj.WriteMem32(0x0029484c,0x461e2102)
--eeObj.WriteMem32(0x00294850,0x08097e70)

end

emuObj.AddVsyncHook(widescreen)