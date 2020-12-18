apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=U - Underwater Unit [NTSC-J] [SLPS-20194]
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00100a14,0x3c0143d5)

--Render Fix
eeObj.WriteMem32(0x001f20e8,0x3c01c060)
end

emuObj.AddVsyncHook(widescreen)