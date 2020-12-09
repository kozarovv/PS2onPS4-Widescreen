apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--43a51846 640103e6
eeObj.WriteMem32(0x0052dcf8,0x081529f8)

eeObj.WriteMem32(0x0054a7e0,0x4618a543)
eeObj.WriteMem32(0x0054a7e4,0x3c013f40)
eeObj.WriteMem32(0x0054a7e8,0x4481f000)
eeObj.WriteMem32(0x0054a7ec,0x461ead42)
eeObj.WriteMem32(0x0054a7f0,0x0814b73f)

--Render fix
--003f013c 00008144 02a50046 (2nd)
eeObj.WriteMem32(0x0052dc3c,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)