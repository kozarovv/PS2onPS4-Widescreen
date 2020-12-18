apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--Zoom (Gameplay)
--003f023c 0c0060c4
eeObj.WriteMem32(0x001ca558,0x3c023f2a)

--Zoom (Event)
--4741023c 67274234 -> 8441023c eac44234
eeObj.WriteMem32(0x001cafc4,0x3c024184)
eeObj.WriteMem32(0x001cafc8,0x3442c4ea)

--Y-Fov
--00000000 00000000 43031446 00000000 -> e13f013c 00f08144 426b1e46 43031e46
eeObj.WriteMem32(0x001ca958,0x3c013fe1)
eeObj.WriteMem32(0x001ca95c,0x4481f000)
eeObj.WriteMem32(0x001ca960,0x461e6b42)
eeObj.WriteMem32(0x001ca964,0x461e0343)
end

emuObj.AddVsyncHook(widescreen)