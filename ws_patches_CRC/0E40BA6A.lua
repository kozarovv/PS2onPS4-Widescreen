apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002a6774,0x3c013f23)

--Y-Fov
eeObj.WriteMem32(0x0025fa14,0x080a5248)
eeObj.WriteMem32(0x00294920,0x460039c2)
eeObj.WriteMem32(0x00294924,0x3c013f40)
eeObj.WriteMem32(0x00294928,0x4481f000)
eeObj.WriteMem32(0x0029492c,0x461e39c3)
eeObj.WriteMem32(0x00294930,0x08097e86)

end

emuObj.AddVsyncHook(widescreen)