apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Shin Megami Tensei - Digital Devil Saga 2 NTSC-U-Widescreen Hack (16:9)
eeObj.WriteMem32(0x0037F5E4,0x3FC00000)
end

emuObj.AddVsyncHook(widescreen)