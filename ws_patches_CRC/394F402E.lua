apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--000018e6 280015e6
eeObj.WriteMem32(0x00371050,0x08113a78)
eeObj.WriteMem32(0x0044e9e0,0x3c013f40)
eeObj.WriteMem32(0x0044e9e4,0x4481f000)
eeObj.WriteMem32(0x0044e9e8,0x461ec602)
eeObj.WriteMem32(0x0044e9ec,0xe6180000)
eeObj.WriteMem32(0x0044e9f0,0x080dc415)

end

emuObj.AddVsyncHook(widescreen)