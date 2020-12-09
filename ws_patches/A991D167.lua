apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=XGIII: Extreme G Racing [PAL-M4] (SLES_502.10)
--comment=Widescreen hack by El_Patas

--16:9
eeObj.WriteMem32(0x0022C288,0x3FE38E38)
eeObj.WriteMem32(0x0022C394,0x42AC0000)
end

emuObj.AddVsyncHook(widescreen)