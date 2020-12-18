apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Saru Get You - Million Monkeys [NTSC-J] (SCPS-15115)
--comment=Widescreen hack
eeObj.WriteMem32(0x0070D214,0x3F947ADF)
end

emuObj.AddVsyncHook(widescreen)