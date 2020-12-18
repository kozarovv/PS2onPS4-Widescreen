apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=XG3 - Extreme G Racing (SLUS_20302)
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x0022CF04,0x3FE38E38)
eeObj.WriteMem32(0x0022D014,0x42AC0000)
end

emuObj.AddVsyncHook(widescreen)