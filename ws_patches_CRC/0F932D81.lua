apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x00141248,0x3c043f53)
eeObj.WriteMem32(0x00141250,0x34883333)
end

emuObj.AddVsyncHook(widescreen)