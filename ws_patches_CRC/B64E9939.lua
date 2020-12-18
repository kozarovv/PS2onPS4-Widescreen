apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dragon Quest V - Tenkuu no Hanayome [NTSC-J] (SLPM-65555)
--comment=Widescreen hack by kerostar (Font fix by Arapapa)

--16:9
eeObj.WriteMem32(0x0081B5E0,0x3F400000)
eeObj.WriteMem32(0x0081A8D0,0x3F400000)
eeObj.WriteMem32(0x0057BD14,0x3C033F4e)
eeObj.WriteMem32(0x0057BD1C,0x3463F9da)

--16:10
--eeObj.WriteMem32(0x0081B5E0,0x3F555555)
--eeObj.WriteMem32(0x0081A8D0,0x3F555555)
--eeObj.WriteMem32(0x0057BD14,0x3C033F65)
--eeObj.WriteMem32(0x0057BD1C,0x3463F92C)

--Font fix by Arapapa
--0000803f0000803f000000400000c04001000200
eeObj.WriteMem32(0x007454C4,0x3F400000)

--Zoom
--4940023c c0012526
--eeObj.WriteMem32(0x0057e018,0x3c024084)
--Y-Fov
--e043023c 00788244
--eeObj.WriteMem32(0x0057dff0,0x3c024415)


end

emuObj.AddVsyncHook(widescreen)