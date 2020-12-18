apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Final Fantasy XII International: Zodiac Job System (SLPM-66750)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
--comment=English patch
--widescreen fix
eeObj.WriteMem32(0x001803c8,0x3C013f80)
eeObj.WriteMem32(0x001803cc,0x34210000)
eeObj.WriteMem32(0x0033fe2c,0x3c020000)
end

emuObj.AddVsyncHook(widescreen)