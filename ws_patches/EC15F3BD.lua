apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Magical Sports - Hard hitter 2 (J)(SLPS-20173)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9


--X-Fov
--02210846 0000a4e7 040063c4 (1st)
eeObj.WriteMem32(0x002688b4,0x0804dd49)

eeObj.WriteMem32(0x00137524,0x46082102)
eeObj.WriteMem32(0x00137528,0x3c013f40)
eeObj.WriteMem32(0x0013752c,0x4481f000)
eeObj.WriteMem32(0x00137530,0x461e2102)
eeObj.WriteMem32(0x00137534,0x0809a22e)
end

emuObj.AddVsyncHook(widescreen)