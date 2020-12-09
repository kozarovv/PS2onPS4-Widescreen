apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rez
--comment=NTSC-J Widescreen Hack
eeObj.WriteMem32(0x0027E4C4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)