apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen 16:9

--Zoom
--003f023c 988a22c4 (2nd)
eeObj.WriteMem32(0x002e881c,0x3c023f20)

--Y-Fov
--03080046 ec00a0e6
eeObj.WriteMem32(0x002e8850,0x08164f48)
eeObj.WriteMem32(0x00593d20,0x46000803)
eeObj.WriteMem32(0x00593d24,0x3c013f40)
eeObj.WriteMem32(0x00593d28,0x4481f000)
eeObj.WriteMem32(0x00593d2c,0x461e0002)
eeObj.WriteMem32(0x00593d30,0x080ba215)


----------------------------------
--X-Fov (needs render fix)
--eeObj.WriteMem32(0x002e7f24,0x3c033fc0)
--X-Fov
--0000803f 00000000 0000803f 00000000 00000000 00000000 03000000  
--eeObj.WriteMem32(0x005d5de8,0x3faaaaab)
--Render fix
--0040023c c80283c4
--eeObj.WriteMem32(0x002e1690,0x3c033fc0)
--0040033c 00308344 0800c0e4
--eeObj.WriteMem32(0x002e1798,0x3c03402b)

end

emuObj.AddVsyncHook(widescreen)