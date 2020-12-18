apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x004b344c,0x3f400000)

--16:10
--eeObj.WriteMem32(0x004b344c,0x3f555555)
end

emuObj.AddVsyncHook(widescreen)