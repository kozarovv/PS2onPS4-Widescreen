apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x00118e08,0x3c0240ab)
eeObj.WriteMem32(0x00118780,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)