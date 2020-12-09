apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=S.L.A.I.: Steel Lancer Arena International [PAL-M3] (SLES_529.40)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00269998,0x3C033F40)
end

emuObj.AddVsyncHook(widescreen)