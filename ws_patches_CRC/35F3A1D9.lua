apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Zoom
--00108344 00000000 43d00246
eeObj.WriteMem32(0x0017a214,0x080d9624)

eeObj.WriteMem32(0x00365890,0x44831000)
eeObj.WriteMem32(0x00365894,0x3c013faa)
eeObj.WriteMem32(0x00365898,0x3421aaab)
eeObj.WriteMem32(0x0036589c,0x4481f000)
eeObj.WriteMem32(0x003658a0,0x461e1082)
eeObj.WriteMem32(0x003658a4,0x0805e886)

--Y-Fov
--41b81846 140000e6
eeObj.WriteMem32(0x0017a22c,0x080d962c)

eeObj.WriteMem32(0x003658b0,0x4618b841)
eeObj.WriteMem32(0x003658b4,0x461e0002)
eeObj.WriteMem32(0x003658b8,0x0805e88c)

--Render fix
--96c3033c 500043c4
eeObj.WriteMem32(0x0019fea4,0x3c03c3d2)
--9643023c5cb80346
eeObj.WriteMem32(0x0019fed8,0x3c0243d2)
end

emuObj.AddVsyncHook(widescreen)