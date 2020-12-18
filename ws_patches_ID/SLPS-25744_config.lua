apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Saint Seiya - Meiou Hades Juunikyuu Hen [NTSC-J] (SLPS-25744)
--comment=Widescreen

eeObj.WriteMem32(0x00162c68,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)