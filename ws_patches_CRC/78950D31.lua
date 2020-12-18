apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--2044013c 00088144 2a00043c
eeObj.WriteMem32(0x001a1548,0x3c0143f0)
--eeObj.WriteMem32(0x001a15a8,0x3c013f55)

--Zoom
--003f013c 00288144 00000000
--eeObj.WriteMem32(0x001a15dc,0x3c013ec0)

--Y-Fov
--f03e013c 00008144 42680146
--eeObj.WriteMem32(0x001a15c0,0x3c013eb4)

--Y-Fov
--eeObj.WriteMem32(0x001a1560,0x3c014300)



--xxxx
--eeObj.WriteMem32(0x0019ff2c,0x3c013f82)
end

emuObj.AddVsyncHook(widescreen)