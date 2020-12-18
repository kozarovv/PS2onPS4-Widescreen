apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov Game play
eeObj.WriteMem32(0x0055e95c,0x3f400000)

--Render fix
eeObj.WriteMem32(0x00558ac8,0x43000000)
eeObj.WriteMem32(0x00560bc8,0x43000000)
eeObj.WriteMem32(0x00592cb0,0x43000000)
eeObj.WriteMem32(0x0058dfa8,0x40100000)
end

emuObj.AddVsyncHook(widescreen)