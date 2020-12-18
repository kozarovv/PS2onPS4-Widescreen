apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--Zoom
eeObj.WriteMem32(0x0010c2ac,0x3c013fab)

--Y-Fov
eeObj.WriteMem32(0x0011b508,0x3c013f10)


------------------------------------------------------
--Entire Zoom Need render fix
--eeObj.WriteMem32(0x0011b5e8,0x3c013f20)
--eeObj.WriteMem32(0x00167544,0x3c013ec0)
--Entire Zoom
--eeObj.WriteMem32(0x0010c2ac,0x3c013fab)
--eeObj.WriteMem32(0x0010cba0,0x3c013f40)
--eeObj.WriteMem32(0x0010cc2c,0x3c013f40)
--eeObj.WriteMem32(0x0010d04c,0x3c013f40)

--xxxxxxxx
--eeObj.WriteMem32(0x00119f70,0x3c013f40)
--eeObj.WriteMem32(0x0011a0d0,0x3c013f40)
--eeObj.WriteMem32(0x0011a21c,0x3c013f40)
--eeObj.WriteMem32(0x0014d7e4,0x3c013f40)
--eeObj.WriteMem32(0x001675b0,0x3c013f40)
--eeObj.WriteMem32(0x001fa378,0x3c013f40)
--eeObj.WriteMem32(0x001fb334,0x3c013f40)
--eeObj.WriteMem32(0x002257fc,0x3c013f40)
--upper status despeare
--eeObj.WriteMem32(0x00226a44,0x3c013f81)
end

emuObj.AddVsyncHook(widescreen)