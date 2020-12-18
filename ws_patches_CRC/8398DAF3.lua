apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by FlatOut

--16:9
eeObj.WriteMem32(0x00466528,0x3F400000)
eeObj.WriteMem32(0x002C6C04,0x40778000)
end

emuObj.AddVsyncHook(widescreen)