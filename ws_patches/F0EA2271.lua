apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 5: Empires (NTSC-U)

eeObj.WriteMem32(0x00146e4c,0x3c0243d6)
eeObj.WriteMem32(0x0019f8ec,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)