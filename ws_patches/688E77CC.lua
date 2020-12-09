apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47 and 60 FPS by asasega (NTSC-K by Arapapa)

eeObj.WriteMem32(0x003BE8BC,0x00000001)
eeObj.WriteMem32(0x004BC950,0x00000001)
eeObj.WriteMem32(0x004BD98C,0x00000001)
eeObj.WriteMem32(0x004CAD54,0x3FE38E39)
eeObj.WriteMem32(0x004CADF0,0x3FAAAAAB)
eeObj.WriteMem32(0x004CADF4,0x3FE38E39)
eeObj.WriteMem32(0x004CAE94,0x3FE38E39)
eeObj.WriteMem32(0x005BCB90,0x3F400000)

--Font fix
--00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 A0 43 44 44 A4 41
--eeObj.WriteMem32(0x00431FD8,0x3f400000)
--eeObj.WriteMem32(0x00431FD0,0x43aaaaaa)
--eeObj.WriteMem32(0x00432098,0x3f400000)
--eeObj.WriteMem32(0x00432090,0x43aaaaaa)
--eeObj.WriteMem32(0x00432278,0x3f400000)
--eeObj.WriteMem32(0x00432370,0x43aaaaaa)

--60 FPS by asasega
--eeObj.WriteMem32(0x0040dff4,0x00000001)
--eeObj.WriteMem32(0x0040ec2c,0x3C888889)
end

emuObj.AddVsyncHook(widescreen)