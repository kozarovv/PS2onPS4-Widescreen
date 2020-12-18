apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00212ff0,0x081461b0)

eeObj.WriteMem32(0x005186c0,0x3c013f40)
eeObj.WriteMem32(0x005186c4,0x4481f000)
eeObj.WriteMem32(0x005186c8,0xc6010068)
eeObj.WriteMem32(0x005186cc,0xc602006c)
eeObj.WriteMem32(0x005186d0,0x461e0843)
eeObj.WriteMem32(0x005186d4,0xe6010068)
eeObj.WriteMem32(0x005186d8,0x08084bfe)

--------------------------------------------------
--Y-Fov
--b63f023c f0ffbd27 6edb4334 
--f33f023c f0ffbd27 35cf4334
--eeObj.WriteMem32(0x00198de0,0x3c023ff3)
--eeObj.WriteMem32(0x00198de8,0x3443cf35)

--Zoom
--00bf013c 00388144 (1st)
--eeObj.WriteMem32(0x002122cc,0x3c01bec0)
end

emuObj.AddVsyncHook(widescreen)