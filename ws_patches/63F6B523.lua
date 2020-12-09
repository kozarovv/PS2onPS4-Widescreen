apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov (Only Battlefields)
--803f023c 00008244 00000000 43000146 02180146 (3rd)
--803f023c abaa4234 00008244 43000146 02180146
eeObj.WriteMem32(0x001db054,0x3c023faa)
eeObj.WriteMem32(0x001db058,0x3442aaab)
eeObj.WriteMem32(0x001db05c,0x44820000)

--2D fix
--00 00 80 BF 00 00 80 3F 00 00 80 BF 00 00 80 3F 00 00 80 3F
eeObj.WriteMem32(0x00a93130,0xbf400000)
eeObj.WriteMem32(0x00a93140,0x3f400000)

----------------------------------------
--Zoom
--eeObj.WriteMem32(0x002516fc,0x3c033f40)

--Y-Fov
--eeObj.WriteMem32(0x0025174c,0x080f61d4)

--eeObj.WriteMem32(0x003d8750,0x46010002)
--eeObj.WriteMem32(0x003d8754,0x3c013faa)
--eeObj.WriteMem32(0x003d8758,0x3421aaab)
--eeObj.WriteMem32(0x003d875c,0x4481f000)
--eeObj.WriteMem32(0x003d8760,0x461e0002)
--eeObj.WriteMem32(0x003d8764,0x080945d4)

--2D Position fix
--eeObj.WriteMem32(0x00251764,0x080fb1b0)

--eeObj.WriteMem32(0x003ec6c0,0x46010002)
--eeObj.WriteMem32(0x003ec6c4,0x3c013faa)
--eeObj.WriteMem32(0x003ec6c8,0x3421aaab)
--eeObj.WriteMem32(0x003ec6cc,0x4481f000)
--eeObj.WriteMem32(0x003ec6d0,0x461e0002)
--eeObj.WriteMem32(0x003ec6d4,0x080945da)
end

emuObj.AddVsyncHook(widescreen)