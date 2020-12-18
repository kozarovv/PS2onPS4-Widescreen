apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Appleseed EX (J)(SLPM-66551)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aabf013c abaa2134
eeObj.WriteMem32(0x0012d828,0x3c01bfe3)
eeObj.WriteMem32(0x0012d82c,0x34218e2a)

--eeObj.WriteMem32(0x0016c0e0,0x3c01bfe3)
--eeObj.WriteMem32(0x0016c0e4,0x34218e2a)
end

emuObj.AddVsyncHook(widescreen)