apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

--Widescreen hack 16:9

eeObj.WriteMem32(0x003DAFA0,0x3f266666)
eeObj.WriteMem32(0x003BFAB0,0x40133333)

--2D Popup Characters Fix by Arapapa

--Right
--80bf023c 00608244 00000000 866b0046
eeObj.WriteMem32(0x001e89bc,0x3c02bf40)

--Left
--46630046 86630046 (1st)

eeObj.WriteMem32(0x001e8a60,0x00000000)
eeObj.WriteMem32(0x001e8a5c,0x08030008)
eeObj.WriteMem32(0x000c0020,0x46006346)
eeObj.WriteMem32(0x000c0024,0x46006386)
eeObj.WriteMem32(0x000c0028,0x3c013f40)
eeObj.WriteMem32(0x000c002c,0x4481f000)
eeObj.WriteMem32(0x000c0030,0x461e6302)
eeObj.WriteMem32(0x000c0034,0x0807a298)

--Font Fix by Arapapa
--02080446 000000e6 040000c6
eeObj.WriteMem32(0x00060020,0x003db098)
eeObj.WriteMem32(0x00238db0,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46040802)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0002)
eeObj.WriteMem32(0x000c0010,0x0808e36d)

eeObj.WriteMem32(0x00010020,0x103db098)
eeObj.WriteMem32(0x00238db0,0x46040802)

--Portrait fix (battle) by Arapapa
--4c42023c 001275e4
eeObj.WriteMem32(0x002ab0d4,0x3c024219)
--4c42033c 68c2023c
eeObj.WriteMem32(0x002ab118,0x3c034219)
end

emuObj.AddVsyncHook(widescreen)