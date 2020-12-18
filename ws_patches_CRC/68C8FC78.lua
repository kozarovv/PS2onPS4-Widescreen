apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x001474c0,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)