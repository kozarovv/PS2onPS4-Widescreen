apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shinten Makai - Generation of Chaos IV (Limited Edition) (J)(SLPM-65571)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0011c7b4,0x3c033f19)
eeObj.WriteMem32(0x0011c7b8,0x3463999a)

--Render Fix
eeObj.WriteMem32(0x0011c7d4,0x3c034400)

--Bottom Text Box 
--eeObj.WriteMem32(0x0013c8a4,0x3c023f19)
--eeObj.WriteMem32(0x0013c944,0x3c023f19)
--eeObj.WriteMem32(0x0013c9e4,0x3c023f19)
--eeObj.WriteMem32(0x0013ca84,0x3c023f19)
end

emuObj.AddVsyncHook(widescreen)