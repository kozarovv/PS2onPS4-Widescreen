apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Maxxed Out Racing Nitro [PAL] (SLES_545.45)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00430644,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)