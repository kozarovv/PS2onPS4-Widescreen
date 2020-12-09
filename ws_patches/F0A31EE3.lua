apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=SMT-Nocturne-NTSC-U-Widescreen Hack (16:9)
--gametitle=SMT-Nocturne
eeObj.WriteMem32(0x002F56B4,0x3FD3A06D)
end

emuObj.AddVsyncHook(widescreen)