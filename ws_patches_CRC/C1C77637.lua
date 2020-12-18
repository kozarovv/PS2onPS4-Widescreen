apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Onimusha - Dawn of Dreams (PlayStation 2 the Best) [NTSC-J] [Disc1of2] [SLPM-74232]
--comment=Widescreen hack by nemesiss2000

--Widescreen hack 16:9
eeObj.WriteMem32(0x0012f960,0x3c033f19)
eeObj.WriteMem32(0x0012f968,0x34649999)
eeObj.WriteMem32(0x0012f9c8,0x3c023f19)
eeObj.WriteMem32(0x0012f9cc,0x34439999)
eeObj.WriteMem32(0x0012fb38,0x3c033f19)
eeObj.WriteMem32(0x0012fb40,0x34639999)
eeObj.WriteMem32(0x0012fbb0,0x3c02c3d6)
eeObj.WriteMem32(0x0012faa0,0x3c024527)
end

emuObj.AddVsyncHook(widescreen)