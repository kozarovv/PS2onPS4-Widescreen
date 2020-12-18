apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=.hack Shinshoku Osen Vol. 3 [NTSC-J] (SLPS-25158)
--comment=Widescreen hack
eeObj.WriteMem32(0x00A62F50,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)