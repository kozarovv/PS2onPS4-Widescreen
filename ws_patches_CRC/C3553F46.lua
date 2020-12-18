apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mega Man X: Command Mission (SLUS-20903)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0010ea24,0x3c013f40)
eeObj.WriteMem32(0x0010ea28,0x44810000)
eeObj.WriteMem32(0x0010ea30,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)