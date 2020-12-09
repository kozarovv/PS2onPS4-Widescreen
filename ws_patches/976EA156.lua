apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Star Wars - Episode III - Revenge of the Sith SLUS_211.43
--comment=Widescreen Hack
eeObj.WriteMem32(0x004dbd2c,0x3c033fab)
eeObj.WriteMem32(0x0051ac44,0x3c023f20)
end

emuObj.AddVsyncHook(widescreen)