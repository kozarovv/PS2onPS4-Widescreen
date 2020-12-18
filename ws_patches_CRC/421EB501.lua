apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--eeObj.WriteMem32(0x0010162c,0x3c013ec0)
--a043013c 00108144 d88c4384
eeObj.WriteMem32(0x00100c3c,0x3c0143d5)

--Render Fix
--00c0013c 00108144 01c91446
eeObj.WriteMem32(0x001f2d00,0x3c01c060)

--Zoom ???
--eeObj.WriteMem32(0x001fb4e0,0x3c013f40)
--eeObj.WriteMem32(0x001f2cac,0x3c013ec0)
--eeObj.WriteMem32(0x001fb4e0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)