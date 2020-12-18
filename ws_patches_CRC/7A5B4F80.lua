apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001409f4,0x3c023fbd)
eeObj.WriteMem32(0x001409fc,0x3442a12e)
end

emuObj.AddVsyncHook(widescreen)