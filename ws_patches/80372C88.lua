apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x00514178,0x00000356)
eeObj.WriteMem32(0x00128674,0x24040280)
eeObj.WriteMem32(0x001286ac,0x24040280)
eeObj.WriteMem32(0x001703cc,0x3c0142de)
eeObj.WriteMem32(0x002d677c,0x3c0142de)
end

emuObj.AddVsyncHook(widescreen)