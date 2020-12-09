apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Wide Screen 16:9

--Car X-Fov
eeObj.WriteMem32(0x001afd0c,0x3c013f40)
eeObj.WriteMem32(0x001afd10,0x44810000)
eeObj.WriteMem32(0x001afd18,0x4600c602)

--Background X-Fov
eeObj.WriteMem32(0x00149e20,0x08079304)
eeObj.WriteMem32(0x001e4c10,0x46040843)
eeObj.WriteMem32(0x001e4c14,0x3c013f40)
eeObj.WriteMem32(0x001e4c18,0x4481f000)
eeObj.WriteMem32(0x001e4c1c,0x461e0842)
eeObj.WriteMem32(0x001e4c20,0x08052789)
end

emuObj.AddVsyncHook(widescreen)