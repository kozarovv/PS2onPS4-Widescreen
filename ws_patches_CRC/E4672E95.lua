apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Tactics 1 (SLPM_675.22) (NTSC-K)
--comment=widescreen 16:9 hack by 99skull
eeObj.WriteMem32(0x0019C574,0x3C023F40)
end

emuObj.AddVsyncHook(widescreen)