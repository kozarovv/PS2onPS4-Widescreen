apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov

eeObj.WriteMem32(0x00233724,0x080d0b48)

eeObj.WriteMem32(0x00342d20,0x46011042)
eeObj.WriteMem32(0x00342d24,0x3c083f40)
eeObj.WriteMem32(0x00342d28,0x4488f000)
eeObj.WriteMem32(0x00342d2c,0x461e0842)
eeObj.WriteMem32(0x00342d30,0x0808cdca)
end

emuObj.AddVsyncHook(widescreen)