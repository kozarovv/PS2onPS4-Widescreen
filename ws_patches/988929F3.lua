apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 63 - The Suieitaikai [NTSC-J] (SLPM-62534)
--comment=Widescreen Hack

eeObj.WriteMem32(0x00C91D28,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)