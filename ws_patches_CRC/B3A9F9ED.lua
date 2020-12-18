apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=BLACK (J) (SLPM-66354)
--comment=Widescreen hack by No.47 (pnach by Arapapa)

eeObj.WriteMem32(0x003BF03C,0x00000001)
eeObj.WriteMem32(0x004BC950,0x00000001)
eeObj.WriteMem32(0x004BD98C,0x00000001)
eeObj.WriteMem32(0x004CAD54,0x3FE38E39)
eeObj.WriteMem32(0x004CADF0,0x3FAAAAAB)
eeObj.WriteMem32(0x004CADF4,0x3FE38E39)
eeObj.WriteMem32(0x004CAE94,0x3FE38E39)
eeObj.WriteMem32(0x005BC390,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)