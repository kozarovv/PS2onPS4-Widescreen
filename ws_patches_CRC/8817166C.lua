apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Gameplay 16:9

--Zoom
--0040033c 00108344 00000000 (1st)
eeObj.WriteMem32(0x0016ea20,0x3c033fb5)

--Y-Fov
--43d00246 03000246
eeObj.WriteMem32(0x0016ea2c,0x08080104)

eeObj.WriteMem32(0x00200410,0x4602d043)
eeObj.WriteMem32(0x00200414,0x3c013f08)
eeObj.WriteMem32(0x00200418,0x4481f000)
eeObj.WriteMem32(0x0020041c,0x461e0842)
eeObj.WriteMem32(0x00200420,0x0805ba8c)
end

emuObj.AddVsyncHook(widescreen)