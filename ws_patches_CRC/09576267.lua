apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x0013f840,0x080d7e20)
eeObj.WriteMem32(0x0035f880,0x3c013f40)
eeObj.WriteMem32(0x0035f884,0x4481f000)
eeObj.WriteMem32(0x0035f888,0x461e6302)
eeObj.WriteMem32(0x0035f88c,0xe7ac0010)
eeObj.WriteMem32(0x0035f890,0xafa00038)
eeObj.WriteMem32(0x0035f894,0x461e6303)
eeObj.WriteMem32(0x0035f898,0xe7ac0024)
eeObj.WriteMem32(0x0035f89c,0x0804fe12)

--Render fix
eeObj.WriteMem32(0x00143b4c,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)