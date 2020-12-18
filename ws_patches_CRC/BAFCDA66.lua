apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Prisoner of War (PAL-M5) (SLES-50397)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0039c3dc,0x0c1127e8)
eeObj.WriteMem32(0x0039c3e0,0x00000000)
eeObj.WriteMem32(0x00449fa0,0x3c013f40)
eeObj.WriteMem32(0x00449fa8,0x4481a000)
eeObj.WriteMem32(0x00449fac,0x46146b42)
eeObj.WriteMem32(0x00449fb0,0x4614a503)
eeObj.WriteMem32(0x00449fb4,0x03e00008)
eeObj.WriteMem32(0x0013e6fc,0x3c0140c0)
eeObj.WriteMem32(0x001a6b60,0x3c013f2b)

--16:10
--eeObj.WriteMem32(0x0039c3dc,0x0c1127e8)
--eeObj.WriteMem32(0x0039c3e0,0x00000000)
--eeObj.WriteMem32(0x00449fa0,0x3c013f55)
--eeObj.WriteMem32(0x00449fa4,0x34215555)
--eeObj.WriteMem32(0x00449fa8,0x4481a000)
--eeObj.WriteMem32(0x00449fac,0x46146b42)
--eeObj.WriteMem32(0x00449fb0,0x4614a503)
--eeObj.WriteMem32(0x00449fb4,0x03e00008)
--eeObj.WriteMem32(0x0013e6fc,0x3c0140a0)
--eeObj.WriteMem32(0x001a6b60,0x3c013f1a)
end

emuObj.AddVsyncHook(widescreen)