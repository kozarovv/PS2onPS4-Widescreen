apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--ae47613f 00000045 00000045
eeObj.WriteMem32(0x003D5820,0x3f266666)

--abaaaa3e 8988083e da0d5d3d
eeObj.WriteMem32(0x003BA330,0x40133333)

--2D Popup Characters Fix

--80bf023c 00608244 00000000 866b0046
eeObj.WriteMem32(0x001e82fc,0x3c02bf40)

--46630046 86630046 (1st)
eeObj.WriteMem32(0x001e83a0,0x00000000)
eeObj.WriteMem32(0x001e839c,0x080e0ed4)
eeObj.WriteMem32(0x00383b50,0x46006346)
eeObj.WriteMem32(0x00383b54,0x46006386)
eeObj.WriteMem32(0x00383b58,0x3c013f40)
eeObj.WriteMem32(0x00383b5c,0x4481f000)
eeObj.WriteMem32(0x00383b60,0x461e6302)
eeObj.WriteMem32(0x00383b64,0x0807a0e8)

--Font Fix
--02080446 000000e6 040000c6
eeObj.WriteMem32(0x00060020,0x003d5918)
eeObj.WriteMem32(0x00238950,0x080e0eda)
eeObj.WriteMem32(0x00383b68,0x46040802)
eeObj.WriteMem32(0x00383b6c,0x3c013f40)
eeObj.WriteMem32(0x00383b70,0x4481f000)
eeObj.WriteMem32(0x00383b74,0x461e0002)
eeObj.WriteMem32(0x00383b78,0x0808e255)

eeObj.WriteMem32(0x00010020,0x103d5918)
eeObj.WriteMem32(0x00238950,0x46040802)

--Portrait fix (battle)
--4c42023c 001275e4
eeObj.WriteMem32(0x002aa7f4,0x3c024219)
--4c42033c 68c2023c
eeObj.WriteMem32(0x002aa838,0x3c034219)

--No Interlacing Code by asasega
--00 10 00 00 00 00 00 00 7C 22 03 02 FF F9 1B 00
eeObj.WriteMem32(0x003F3FD0,0x00001000)
eeObj.WriteMem32(0x003F3FD0,0x000010E0)
end

emuObj.AddVsyncHook(widescreen)