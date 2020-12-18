apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shining Force EXA (J) (SLPM_666.46)
--comment=Widescreen Hack (pnach by Arapapa)

eeObj.WriteMem32(0x010FE8AC,0x3ff3cf35)
end

emuObj.AddVsyncHook(widescreen)