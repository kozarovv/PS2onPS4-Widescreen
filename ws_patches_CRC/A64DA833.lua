apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Zombie Virus (E)(SLES-54462)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

X-Fov
eeObj.WriteMem32(0x00137f94,0x3c033f40)

--Render Fix
eeObj.WriteMem32(0x00138030,0x3c023f30)
end

emuObj.AddVsyncHook(widescreen)