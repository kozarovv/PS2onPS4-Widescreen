apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Zoom
--0040033c 00108344 00000000 43d00246
eeObj.WriteMem32(0x0016fcc4,0x080d78b0)

eeObj.WriteMem32(0x0035e2c0,0x44831000)
eeObj.WriteMem32(0x0035e2c4,0x3c013faa)
eeObj.WriteMem32(0x0035e2c8,0x3421aaab)
eeObj.WriteMem32(0x0035e2cc,0x4481f000)
eeObj.WriteMem32(0x0035e2d0,0x461e1082)
eeObj.WriteMem32(0x0035e2d4,0x0805bf32)

--Y-Fov
--41b81846 140000e6
eeObj.WriteMem32(0x0016fcdc,0x080d78b8)

eeObj.WriteMem32(0x0035e2e0,0x4618b841)
eeObj.WriteMem32(0x0035e2e4,0x461e0002)
eeObj.WriteMem32(0x0035e2e8,0x0805bf38)

--Render fix
--96c3033c 500043c4
eeObj.WriteMem32(0x00193564,0x3c03c3d2)
--9643023c5cb80346
eeObj.WriteMem32(0x00193598,0x3c0243d2)
end

emuObj.AddVsyncHook(widescreen)