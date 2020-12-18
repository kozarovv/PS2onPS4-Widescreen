apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0016ba18,0x46180043)
eeObj.WriteMem32(0x0016ba1c,0x3c013f40)
eeObj.WriteMem32(0x0016ba20,0x44811800)
eeObj.WriteMem32(0x0016ba24,0x46030842)

--Render fix
eeObj.WriteMem32(0x00242914,0x3c023fc0)
eeObj.WriteMem32(0x002429f0,0x3c023fc0)
end

emuObj.AddVsyncHook(widescreen)