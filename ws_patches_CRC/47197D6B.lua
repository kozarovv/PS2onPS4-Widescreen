apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--42420146 02490446
eeObj.WriteMem32(0x001b6638,0x08128790)

eeObj.WriteMem32(0x004a1e40,0x46014242)
eeObj.WriteMem32(0x004a1e44,0x3c013f40)
eeObj.WriteMem32(0x004a1e48,0x4481f000)
eeObj.WriteMem32(0x004a1e4c,0x461e4a42)
eeObj.WriteMem32(0x004a1e50,0x0806d98f)

--Render fix
--68008bc4 0800a327
eeObj.WriteMem32(0x001b5cf0,0x08128798)

eeObj.WriteMem32(0x004a1e60,0xc48b0068)
eeObj.WriteMem32(0x004a1e64,0x3c013faa)
eeObj.WriteMem32(0x004a1e68,0x3421aaab)
eeObj.WriteMem32(0x004a1e6c,0x4481f000)
eeObj.WriteMem32(0x004a1e70,0x461e5ac2)
eeObj.WriteMem32(0x004a1e74,0x0806d73d)
end

emuObj.AddVsyncHook(widescreen)