apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Whirl Tour [PAL-M5] (SLES_511.26)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001B4334,0x3C014440)

--Render fix
eeObj.WriteMem32(0x001AA394,0x3C013C2E)
end

emuObj.AddVsyncHook(widescreen)