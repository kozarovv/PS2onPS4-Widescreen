apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Grandia II (J) (SLPM_650.81)
--comment=Widescreen Hack (16:9) (pnach NTSC-J by Arapapa)

eeObj.WriteMem32(0x0025c9e8,0x3c013f40)
eeObj.WriteMem32(0x0025cabc,0x3c01bf41)
eeObj.WriteMem32(0x0025c9f0,0x4481f000)
eeObj.WriteMem32(0x0025caf8,0x461e6343)

--FMV fix (by flameofrecca)
eeObj.WriteMem32(0x00407074,0x42a00000)
eeObj.WriteMem32(0x0040707C,0x43f00000)
end

emuObj.AddVsyncHook(widescreen)