apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Genji [NTSC-J] (SCPS-15095)
--comment=Widescreen Hack by okuha8748p, Arapapa 

eeObj.WriteMem32(0x002e4ba0,0x3C013FC5)

--FMV fix
eeObj.WriteMem32(0x002cb63c,0x3c013f2a)
eeObj.WriteMem32(0x002cb64c,0x3c013f2a)
end

emuObj.AddVsyncHook(widescreen)