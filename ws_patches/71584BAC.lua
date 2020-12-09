apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001D1A3C,0x00000000)
eeObj.WriteMem32(0x003BB878,0x00000001)
eeObj.WriteMem32(0x003B8C34,0xC0222222)
eeObj.WriteMem32(0x003B8C4C,0x40222222)
eeObj.WriteMem32(0x003B8C6C,0x40222222)
end

emuObj.AddVsyncHook(widescreen)