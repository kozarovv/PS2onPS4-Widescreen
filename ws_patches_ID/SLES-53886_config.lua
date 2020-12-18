apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=BLACK (PAL) (SLES_538.86)
--comment=Widescreen Converted from NTSC hack by No.47 (pnach by Some Chump)

eeObj.WriteMem32(0x003BE8BC,0x00000001)
eeObj.WriteMem32(0x004BC950,0x00000001)
eeObj.WriteMem32(0x004BD98C,0x00000101)
eeObj.WriteMem32(0x004CAD54,0x3FE38E39)
eeObj.WriteMem32(0x004CADF0,0x3FAAAAAB)
eeObj.WriteMem32(0x004CADF4,0x3FE38E39)
eeObj.WriteMem32(0x004CAE94,0x3FE38E39)
eeObj.WriteMem32(0x005BCB90,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)