apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
--06050046 46b30046 (1st)
eeObj.WriteMem32(0x003fd598,0x080c3084)

eeObj.WriteMem32(0x0030c210,0x46000506)
eeObj.WriteMem32(0x0030c214,0x3c013f40)
eeObj.WriteMem32(0x0030c218,0x4481f000)
eeObj.WriteMem32(0x0030c21c,0x461ea502)
eeObj.WriteMem32(0x0030c220,0x080ff567)
end

emuObj.AddVsyncHook(widescreen)