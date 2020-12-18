apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Inside Battle mode in the Versus Battle causes a zoom, and in Squad Battle causes an Y-FOV.
 
--Gameplay 16:9 
eeObj.WriteMem32(0x0015310C,0x3C013F25)
eeObj.WriteMem32(0x002AB728,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)