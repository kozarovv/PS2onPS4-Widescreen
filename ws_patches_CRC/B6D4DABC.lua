apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dai-2-Ji Super Robot Taisen Alpha (J)(SLPS-25228)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom (3D Graphics)
--803f023c 14005fe6
eeObj.WriteMem32(0x001294c4,0x3c023fab)

--Y-Fov (3D Graphics)
eeObj.WriteMem32(0x0012d72c,0x3c023F1F)
eeObj.WriteMem32(0x0012d730,0x344349f1)


--Y-Fov (2D Graphics)
eeObj.WriteMem32(0x0012a410,0x3c023F1F)
eeObj.WriteMem32(0x0012a414,0x344249f1)

--Zoom (2D Graphics)
--803f013c 00008144 2d20a003
eeObj.WriteMem32(0x00103768,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)