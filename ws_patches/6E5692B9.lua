apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--03210e46 015a0546
eeObj.WriteMem32(0x002b0b84,0x080c6fd8)

eeObj.WriteMem32(0x0031bf60,0x460e2103)
eeObj.WriteMem32(0x0031bf64,0x3c173f40)
eeObj.WriteMem32(0x0031bf68,0x4497f800)
eeObj.WriteMem32(0x0031bf6c,0x461f2102)
eeObj.WriteMem32(0x0031bf70,0x080ac2e2)
end

emuObj.AddVsyncHook(widescreen)