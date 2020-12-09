apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=And 1 Streetball (U)(SLUS-21237)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--46c30046 608092c7
eeObj.WriteMem32(0x0032ced0,0x08106094)

eeObj.WriteMem32(0x00418250,0x4600c346)
eeObj.WriteMem32(0x00418254,0x3c013f40)
eeObj.WriteMem32(0x00418258,0x4481f000)
eeObj.WriteMem32(0x0041825c,0x461e6b42)
eeObj.WriteMem32(0x00418260,0x080cb3b5)

--Font Fix
eeObj.WriteMem32(0x00164c5c,0x3c013f06)
eeObj.WriteMem32(0x00164c60,0x34216666)

eeObj.WriteMem32(0x0016506c,0x3c013f06)
eeObj.WriteMem32(0x00165070,0x34216666)

eeObj.WriteMem32(0x00163f40,0x3c013f0d)
eeObj.WriteMem32(0x00163f44,0x34218106)

eeObj.WriteMem32(0x00164300,0x3c013f0d)
eeObj.WriteMem32(0x00164304,0x34218106)

eeObj.WriteMem32(0x00164d3c,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)