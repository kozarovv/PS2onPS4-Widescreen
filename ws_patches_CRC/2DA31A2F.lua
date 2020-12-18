apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00308144 21205102
eeObj.WriteMem32(0x00211684,0x3c013f40)

--803f013c 00088144 40000924
eeObj.WriteMem32(0x00212168,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)