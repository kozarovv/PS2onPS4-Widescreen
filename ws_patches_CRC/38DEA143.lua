apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x005e0664,0x00000000)
eeObj.WriteMem32(0x00548ec8,0x3f6eeeee)
eeObj.WriteMem32(0x00548ecc,0x3f0c0000)


------------------/
--------------------------------------
--X-Fov  (Needs Render fix)
--eeObj.WriteMem32(0x00422ba8,0x080d3724)
--eeObj.WriteMem32(0x0034dc90,0x46010043)
--eeObj.WriteMem32(0x0034dc94,0x3c013f40)
--eeObj.WriteMem32(0x0034dc98,0x4481f000)
--eeObj.WriteMem32(0x0034dc9c,0x461e0842)
--eeObj.WriteMem32(0x0034dca0,0x08108aeb)
end

emuObj.AddVsyncHook(widescreen)