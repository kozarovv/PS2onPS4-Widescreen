apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=KA2 aka Mr Mosquito 2 - Widescreen Hack (16:9) (NTSC-J)
eeObj.WriteMem32(0x003DF6BC,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)