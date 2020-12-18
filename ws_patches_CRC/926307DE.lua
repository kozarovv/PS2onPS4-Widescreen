apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=LEGO Star Wars - The Video Game SLUS_210.83
--comment=Widescreen Hack
eeObj.WriteMem32(0x01f95534,0x3f100000)
end

emuObj.AddVsyncHook(widescreen)