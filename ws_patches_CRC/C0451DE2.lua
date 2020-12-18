apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hard Luck - Return of the Heroes (J)(SLPM-65695)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--aa3f023c 2d284002
--e33f023c 2d284002
eeObj.WriteMem32(0x00296ba4,0x3c023fe3)
eeObj.WriteMem32(0x00296bb0,0x34428e2a)


--Zoom
--a0006cc6 a8006dc6
eeObj.WriteMem32(0x00296bbc,0x080443e4)

eeObj.WriteMem32(0x00110f90,0xc66c00a0)
eeObj.WriteMem32(0x00110f94,0x3c013faa)
eeObj.WriteMem32(0x00110f98,0x3421aaab)
eeObj.WriteMem32(0x00110f9c,0x4481f000)
eeObj.WriteMem32(0x00110fa0,0x461e6302)
eeObj.WriteMem32(0x00110fa4,0x080a5af0)

--------------------------------------------------/
--Zoom
--eeObj.WriteMem32(0x00139b7c,0x3c01bec0)
--eeObj.WriteMem32(0x0013a87c,0x3c013f00)

--X-Fov (needs render fix)
--eeObj.WriteMem32(0x0013a8a8,0x080443e4)

--eeObj.WriteMem32(0x00110f90,0x46010043)
--eeObj.WriteMem32(0x00110f94,0x3c013f40)
--eeObj.WriteMem32(0x00110f98,0x4481f000)
--eeObj.WriteMem32(0x00110f9c,0x00000000)
--eeObj.WriteMem32(0x00110fa0,0x461e0842)
--eeObj.WriteMem32(0x00110fa4,0x0804ea2b)
end

emuObj.AddVsyncHook(widescreen)