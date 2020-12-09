apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Gameplay 16:9

--Zoom
--0040033c 00108344 00000000 (1st)
eeObj.WriteMem32(0x0016e9a0,0x3c033fb5)

--Y-Fov
--43d00246 03000246
eeObj.WriteMem32(0x0016e9ac,0x0807fbf4)

eeObj.WriteMem32(0x001fefd0,0x4602d043)
eeObj.WriteMem32(0x001fefd4,0x3c013f08)
eeObj.WriteMem32(0x001fefd8,0x4481f000)
eeObj.WriteMem32(0x001fefdc,0x461e0842)
eeObj.WriteMem32(0x001fefe0,0x0805ba6c)

--------------------------------/
--screen Y-scale
--eeObj.WriteMem32(0x0016a210,0x3c023fab)

--Back graphic zoom
--eeObj.WriteMem32(0x001733b4,0x3c033f40)

--Zoom
--eeObj.WriteMem32(0x001cfa60,0x3c033f60)
--eeObj.WriteMem32(0x001cadc8,0x3c024296)
end

emuObj.AddVsyncHook(widescreen)