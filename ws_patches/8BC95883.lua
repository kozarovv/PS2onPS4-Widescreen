apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sly 3 - Honour Among Thieves NTSC-U
--comment=Widescreen Hack
eeObj.WriteMem32(0x0016680c,0x3c014455)
end

emuObj.AddVsyncHook(widescreen)