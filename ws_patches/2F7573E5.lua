apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00206f00,0x08097878)
eeObj.WriteMem32(0x0025e1e0,0x3c013f40)
eeObj.WriteMem32(0x0025e1e4,0x4481f000)
eeObj.WriteMem32(0x0025e1e8,0xc6010068)
eeObj.WriteMem32(0x0025e1ec,0xc602006c)
eeObj.WriteMem32(0x0025e1f0,0x461e0843)
eeObj.WriteMem32(0x0025e1f4,0xe6010068)
eeObj.WriteMem32(0x0025e1f8,0x08081bc2)
end

emuObj.AddVsyncHook(widescreen)