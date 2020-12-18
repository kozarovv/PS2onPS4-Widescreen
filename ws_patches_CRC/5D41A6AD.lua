apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom (3D)
--003f023c 00008244 6800a427
eeObj.WriteMem32(0x0013d618,0x3c023f26)

--Y-Fov (3D)
eeObj.WriteMem32(0x0013d6ec,0x08095b68)
eeObj.WriteMem32(0x00256da0,0x3c083f40)
eeObj.WriteMem32(0x00256da4,0x4488f000)
eeObj.WriteMem32(0x00256da8,0x461e0843)
eeObj.WriteMem32(0x00256dac,0xe7a10034)
eeObj.WriteMem32(0x00256db0,0x46141843)
eeObj.WriteMem32(0x00256db4,0x0804f5bc)


end

emuObj.AddVsyncHook(widescreen)