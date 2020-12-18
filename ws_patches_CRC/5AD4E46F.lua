apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001780d8,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46014242)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e4a42)
eeObj.WriteMem32(0x000c0010,0x0805e037)

--Render fix
--68008bc4 0800a327
eeObj.WriteMem32(0x00177790,0x08177f18)

eeObj.WriteMem32(0x005dfc60,0xc48b0068)
eeObj.WriteMem32(0x005dfc64,0x3c013faa)
eeObj.WriteMem32(0x005dfc68,0x3421aaab)
eeObj.WriteMem32(0x005dfc6c,0x4481f000)
eeObj.WriteMem32(0x005dfc70,0x461e5ac2)
eeObj.WriteMem32(0x005dfc74,0x0805dde5)


--------------------------/
--Zoom
--eeObj.WriteMem32(0x00178e24,0x3c023f00)
--eeObj.WriteMem32(0x001780a4,0x3c02bec0)
--Y-Fov
--eeObj.WriteMem32(0x00013f40,0x006e2da2)
--eeObj.WriteMem32(0x006e2da0,0x3f100000)
end

emuObj.AddVsyncHook(widescreen)