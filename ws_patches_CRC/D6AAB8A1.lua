apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cyclone Circus (E)(SLES-52684)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00243348,0x08086794)

eeObj.WriteMem32(0x00219e50,0x46014242)
eeObj.WriteMem32(0x00219e54,0x3c013f40)
eeObj.WriteMem32(0x00219e58,0x4481f000)
eeObj.WriteMem32(0x00219e5c,0x461e4a42)
eeObj.WriteMem32(0x00219e60,0x08090cd3)
end

emuObj.AddVsyncHook(widescreen)