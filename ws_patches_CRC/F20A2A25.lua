apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Teenage Mutant Ninja Turtles SLUS_207.16
--comment=Widescreen Hack (Zoom fix by Arapapa)
eeObj.WriteMem32(0x00164370,0x3c023fe3)
eeObj.WriteMem32(0x00164378,0x34428e38)
eeObj.WriteMem32(0x00164658,0x3c023fe3)
eeObj.WriteMem32(0x0016465c,0x34428e38)
--eeObj.WriteMem32(0x00463904,0x3F2b0000)

--Zoom - ELF hack
eeObj.WriteMem32(0x00180454,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)