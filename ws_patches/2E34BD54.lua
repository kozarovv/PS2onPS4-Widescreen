apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9


--X-Fov
--02210846 0000a4e7 040063c4 (1st)
eeObj.WriteMem32(0x00214a84,0x0804d111)

eeObj.WriteMem32(0x00134444,0x46082102)
eeObj.WriteMem32(0x00134448,0x3c013f40)
eeObj.WriteMem32(0x0013444c,0x4481f000)
eeObj.WriteMem32(0x00134450,0x461e2102)
eeObj.WriteMem32(0x00134454,0x080852a2)
end

emuObj.AddVsyncHook(widescreen)