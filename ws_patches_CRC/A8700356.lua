apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kidou Senshi Gundam - SEED (J)(SLPS-20300)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--X-Fov (Little zoom out than original)
eeObj.WriteMem32(0x0015f198,0x3c02442A)

--Zoom in (Fix zoom scale)
eeObj.WriteMem32(0x00129b6c,0x3c024414)
end

emuObj.AddVsyncHook(widescreen)