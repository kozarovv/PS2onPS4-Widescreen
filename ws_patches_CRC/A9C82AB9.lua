apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Demon Stone (SLUS-20804)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001a4fb0,0x3c013f40)
eeObj.WriteMem32(0x001a4fb4,0x44810000)
eeObj.WriteMem32(0x001a4fbc,0x46006b43)

eeObj.WriteMem32(0x0015629c,0x3c023fe3)
eeObj.WriteMem32(0x001562a0,0x34438e38)

--black borders fix
eeObj.WriteMem32(0x001d8330,0x24040001)
end

emuObj.AddVsyncHook(widescreen)