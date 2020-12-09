apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Final Fantasy X-2 NTSC-J International + Last Mission
--comment=Widescreen hack
eeObj.WriteMem32(0x001aabb8,0x3c013f19)
eeObj.WriteMem32(0x001aabbc,0x3421999a)
eeObj.WriteMem32(0x0011be04,0x3c014440)
eeObj.WriteMem32(0x0017c22c,0x3c01442b)

--alternate values
eeObj.WriteMem32(0x00367044,0x3F5EEEEF)

--menu cursor width
eeObj.WriteMem32(0x00214124,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)