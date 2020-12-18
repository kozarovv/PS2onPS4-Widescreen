apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--03210e46 015a0546
eeObj.WriteMem32(0x002b0034,0x08030000)

eeObj.WriteMem32(0x000c0000,0x460e2103)
eeObj.WriteMem32(0x000c0004,0x3c173f40)
eeObj.WriteMem32(0x000c0008,0x4497f800)
eeObj.WriteMem32(0x000c000c,0x461f2102)
eeObj.WriteMem32(0x000c0010,0x080ac00e)
end

emuObj.AddVsyncHook(widescreen)