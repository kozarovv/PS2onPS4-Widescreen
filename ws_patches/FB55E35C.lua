apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bombastic SLUS_207.64
--comment=Widescreen Hack
eeObj.WriteMem32(0x001581bc,0x3c013f40)
eeObj.WriteMem32(0x00158244,0x3c0143d6)
eeObj.WriteMem32(0x001aa03c,0x3c013f40)
eeObj.WriteMem32(0x001aa054,0x3c0143d6)
--eeObj.WriteMem32(0x001aa074,0x3c014495)
end

emuObj.AddVsyncHook(widescreen)