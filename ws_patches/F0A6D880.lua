apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Harvest Moon - Save the Homeland - Widescreen Hack (16:9) (NTSC-U)
eeObj.WriteMem32(0x0026EED0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)