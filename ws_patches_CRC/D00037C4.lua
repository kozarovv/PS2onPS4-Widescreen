apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disgaea: Hour of Darkness [NTSC-J] (SLPS-20251)
--comment=Widescreen hack by nemesis2000 (pnach by Little Giant)

eeObj.WriteMem32(0x0014c39c,0x3c033f40)
eeObj.WriteMem32(0x0014c3a4,0xe7a000e4)
eeObj.WriteMem32(0x0014c3a8,0x46000003)
eeObj.WriteMem32(0x0014c3ac,0xe7a000e8)
eeObj.WriteMem32(0x0010509c,0x3c013f40)
eeObj.WriteMem32(0x001050a0,0x44810000)
eeObj.WriteMem32(0x001050a8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)