apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Garfield - Saving Arlene (J)(SLPM-62733)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--zoom
eeObj.WriteMem32(0x0010ecb4,0x3c033f40)

--fov
eeObj.WriteMem32(0x0010edbc,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)