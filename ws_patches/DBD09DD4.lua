apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mark of Kri SCUS_971.40
--comment=Widescreen Hack
eeObj.WriteMem32(0x00350714,0x3c013faa)
eeObj.WriteMem32(0x00101370,0x3c014396)
eeObj.WriteMem32(0x00100a9c,0x3c014396)
eeObj.WriteMem32(0x002e08ac,0x3c0144bf)
end

emuObj.AddVsyncHook(widescreen)