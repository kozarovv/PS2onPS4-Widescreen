apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001486fc,0x3c013f40)
eeObj.WriteMem32(0x00148700,0x44810800)
eeObj.WriteMem32(0x00148704,0x27bdffe0)
eeObj.WriteMem32(0x00148708,0x3c04004b)
eeObj.WriteMem32(0x0014870c,0x8c848318)
eeObj.WriteMem32(0x00148710,0x03a0282d)
eeObj.WriteMem32(0x00148714,0x46016002)
eeObj.WriteMem32(0x00148718,0x46016303)

eeObj.WriteMem32(0x00148368,0x0c0521bf)
eeObj.WriteMem32(0x00197ddc,0x0c0521bf)
eeObj.WriteMem32(0x00197df8,0x0c0521bf)

--black borders fix
eeObj.WriteMem32(0x0017f75c,0x3c013f80)
end

emuObj.AddVsyncHook(widescreen)