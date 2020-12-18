apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Grand Theft Auto - Vice City (SLPM-65488)
--comment=Widescreen fix by BloodRaynare

eeObj.WriteMem32(0x001324bc,0x3c013f9d)
eeObj.WriteMem32(0x001324c0,0x44810000)
eeObj.WriteMem32(0x001324c4,0x46006302)
eeObj.WriteMem32(0x001324c8,0x03e00008)
eeObj.WriteMem32(0x001324cc,0xe78c8678)
eeObj.WriteMem32(0x00247e3c,0x0c04c92f)
eeObj.WriteMem32(0x0027453c,0x0c04c932)
eeObj.WriteMem32(0x00274b0c,0x0c04c932)
end

emuObj.AddVsyncHook(widescreen)