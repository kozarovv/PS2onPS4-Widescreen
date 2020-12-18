apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shutokou Battle 01 [NTSC-J] (SLPM-65308)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001411f8,0x3c043f53)
eeObj.WriteMem32(0x00141200,0x34883333)
end

emuObj.AddVsyncHook(widescreen)