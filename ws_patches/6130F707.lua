apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0050c5a8,0x3f2aaaaa)
eeObj.WriteMem32(0x0050c5b0,0x3f2aaaaa)
eeObj.WriteMem32(0x0050c3b4,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)