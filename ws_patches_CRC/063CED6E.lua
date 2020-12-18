apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001a1914,0x3c013fc0)
eeObj.WriteMem32(0x001a1918,0x34214000)
eeObj.WriteMem32(0x001a1924,0x3c013fe3)
eeObj.WriteMem32(0x001a1928,0x34218e39)

eeObj.WriteMem32(0x001a18e0,0x3c013fbb)
eeObj.WriteMem32(0x001a18e4,0x34218000)
eeObj.WriteMem32(0x001588ec,0x3c014063)
eeObj.WriteMem32(0x001588f0,0x34218e39)

-- removes black texture glitches in hardware emulation, but brightens screen
eeObj.WriteMem32(0x001c16e4,0x3c013f7f)
end

emuObj.AddVsyncHook(widescreen)