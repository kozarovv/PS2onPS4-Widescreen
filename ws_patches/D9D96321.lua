apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Without Warning (SLES-53716)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001486ac,0x3c013f40)
eeObj.WriteMem32(0x001486b0,0x44810800)
eeObj.WriteMem32(0x001486b4,0x27bdffe0)
eeObj.WriteMem32(0x001486b8,0x3c04004b)
eeObj.WriteMem32(0x001486bc,0x8c848218)
eeObj.WriteMem32(0x001486c0,0x03a0282d)
eeObj.WriteMem32(0x001486c4,0x46016002)
eeObj.WriteMem32(0x001486c8,0x46016303)

eeObj.WriteMem32(0x00148318,0x0c0521ab)
eeObj.WriteMem32(0x00197d6c,0x0c0521ab)
eeObj.WriteMem32(0x00197d88,0x0c0521ab)

--black borders fix
eeObj.WriteMem32(0x0017f6ec,0x3c013f80)
end

emuObj.AddVsyncHook(widescreen)