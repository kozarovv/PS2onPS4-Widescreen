apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x004af438,0x3f5a7408)

--Render Fix
eeObj.WriteMem32(0x00308038,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)