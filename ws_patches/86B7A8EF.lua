apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0011c7b4,0x3c033f19)
eeObj.WriteMem32(0x0011c7b8,0x3463999a)

--Render Fix
eeObj.WriteMem32(0x0011c7d4,0x3c034400)
end

emuObj.AddVsyncHook(widescreen)