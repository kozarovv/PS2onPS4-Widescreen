apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Battle Gear 3 (SLPM_65434)
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x002C9B74,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)