apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-fov - ELF hack
--4c3f033c 3c8580af cdcc6434
eeObj.WriteMem32(0x00158d14,0x3c033f19)
eeObj.WriteMem32(0x00158d1c,0x3464999a)

--Render fix - Memory hack
eeObj.WriteMem32(0x00446298,0x3f000000)
eeObj.WriteMem32(0x004462ac,0xbf500000)

------------------------------------------------------/

--zoom
--eeObj.WriteMem32(0x0014186c,0x3c023fab)

--X-Fov - Memory hack
--0000e03f cdcc4c3f 00000000 00000000
eeObj.WriteMem32(0x0017C330,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)