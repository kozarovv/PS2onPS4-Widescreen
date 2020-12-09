apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Siren [NTSC-J] (SCPS-15053)
--comment=Widescreen hack
--gameplay by sergx12
eeObj.WriteMem32(0x001fb3b8,0x3c023f40)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x001f5598,0x3c027560)
eeObj.WriteMem32(0x001f55e4,0x34028aa0)
end

emuObj.AddVsyncHook(widescreen)