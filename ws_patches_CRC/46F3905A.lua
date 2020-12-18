apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00688144 38848ec7
eeObj.WriteMem32(0x0012bfa8,0x3c013f40)

--Render fix
--48 42 01 3c 00 10 81 44 24 00 81 c4
eeObj.WriteMem32(0x0012c180,0x3c0142d0)
end

emuObj.AddVsyncHook(widescreen)