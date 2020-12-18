apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SD Gundam G Generation Seed (J)(SLPS-25531)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00212ff0,0x080cc5d4)

eeObj.WriteMem32(0x00331750,0x3c013f40)
eeObj.WriteMem32(0x00331754,0x4481f000)
eeObj.WriteMem32(0x00331758,0xc6010068)
eeObj.WriteMem32(0x0033175c,0xc602006c)
eeObj.WriteMem32(0x00331760,0x461e0843)
eeObj.WriteMem32(0x00331764,0xe6010068)
eeObj.WriteMem32(0x00331768,0x08084bfe)

------------------------------------------
--Y-Fov
--eeObj.WriteMem32(0x00198de0,0x3c023ff3)
--eeObj.WriteMem32(0x00198de8,0x3443cf35)

--Zoom
--eeObj.WriteMem32(0x002122cc,0x3c01bec0)
end

emuObj.AddVsyncHook(widescreen)