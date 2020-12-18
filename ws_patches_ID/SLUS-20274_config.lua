apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=City Crisis (U)(SLUS-20274)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00232c08,0x3c023f6e)
eeObj.WriteMem32(0x00232c0c,0x3442eee9)
eeObj.WriteMem32(0x00232c14,0x3c023fe3)
eeObj.WriteMem32(0x00232c18,0x34428e2a)
eeObj.WriteMem32(0x003ecc08,0x3c023f6e)
eeObj.WriteMem32(0x003ecc0c,0x3442eee9)
eeObj.WriteMem32(0x003ecc14,0x3c023fe3)
eeObj.WriteMem32(0x003ecc18,0x34428e2a)
end

emuObj.AddVsyncHook(widescreen)