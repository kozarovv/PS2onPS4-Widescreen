apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom 
eeObj.WriteMem32(0x001f1ac0,0x3c023f70)
--eeObj.WriteMem32(0x001f1ac8,0x34420a8d)

--Y-Fov 
eeObj.WriteMem32(0x0021d5b8,0x3c023f3f)
--eeObj.WriteMem32(0x0021d5bc,0x344301a3)
end

emuObj.AddVsyncHook(widescreen)