apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--8988083e d10d5d3d
eeObj.WriteMem32(0x003c03dc,0x40100000)
--8040013c 00008144 00000000 02080046 aa3e013c
eeObj.WriteMem32(0x0012f6e8,0x3c01409a)

--Y-Fov 
--663f013c 66662134 00008144 00894524
eeObj.WriteMem32(0x0012f634,0x3c013f99)
eeObj.WriteMem32(0x0012f638,0x3421999a)





------------------------------------------------------
--
--eeObj.WriteMem32(0x0038e858,0x3f48b439)
--eeObj.WriteMem32(0x0012f694,0x3c013ff0)
end

emuObj.AddVsyncHook(widescreen)